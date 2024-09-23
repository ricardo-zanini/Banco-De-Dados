/*
    ----------------- ETAPA II -----------------

        ==================================================================
        ------------------- ITEM 3A -> Criacao de View -------------------
        ==================================================================
        
        VIEW: em_alta_brasil
        View contendo os videos brasileiros da semana com mais de 500.000 de views
        (Essa consulta poderia ser utilizada para moldar quais seriam os videos selecionados para a aba “em alta”, contendo os videos mais assistidos da semana)
*/

CREATE VIEW em_alta_brasil
AS
SELECT 
    VIDEO.*
FROM 
    VIDEO
JOIN CHANNEL
    ON CHANNEL.COD = VIDEO.CHANNEL
WHERE
    CHANNEL.COUNTRY = 'Brasil'
	AND VIDEO.VIEWS >= 500000

/*
    ============================================================
    ------------------- ITEM 3B -> Consultas -------------------
    ============================================================


    --- CONSULTA 01 --- (Usando Subconsultas e Group By)
    - Selecionar todos os canais e a soma de suas views para videos que tenham pelo menos 1 comentario feito por um usuario premium
*/

SELECT 
    CHANNEL.NAME, sum(VIDEO.VIEWS) AS VIEWS_PREMIUM
FROM 
    CHANNEL
JOIN VIDEO
    ON CHANNEL.COD = VIDEO.CHANNEL
WHERE
    EXISTS(
        SELECT COMMENT.ID
        FROM COMMENT
        WHERE
            VIDEO.COD = COMMENT.VIDEO
            AND COMMENT.SENDER IN (
            SELECT CHANNEL.COD 
            FROM USER_ACCOUNT 
            JOIN CHANNEL
            ON CHANNEL.USERID = USER_ACCOUNT.ID WHERE PREMIUM = true
        )
    )  
GROUP BY CHANNEL.NAME

/*
    --- CONSULTA 02 --- (Usando Group By e HAVING)
    - Selecionar os usuarios e o numero de videos publicos baixados por usuarios que nao tem um canal, com contagem de downloads > 3
*/

SELECT 
    USER_ACCOUNT.NAME, COUNT(DOWNLOAD.USERID) AS CONTAGEM_DOWNLOADS
FROM 
    USER_ACCOUNT
JOIN DOWNLOAD
    ON DOWNLOAD.USERID = USER_ACCOUNT.ID
LEFT JOIN CHANNEL
    ON CHANNEL.USERID = USER_ACCOUNT.ID
WHERE 
    CHANNEL.USERID IS NULL
GROUP BY 
    USER_ACCOUNT.NAME
HAVING COUNT(DOWNLOAD.USERID) > 3


/*
    --- CONSULTA 03 --- (Usando Subconsultas e NOT EXISTS)
    - Todas playlists criadas depois de 2020 que nao tenham videos com infracoes
*/

SELECT DISTINCT 
    PLAYLIST.TITLE
FROM
    PLAYLIST
WHERE
    PLAYLIST.CREATIONDATE >= '01-01-2020'
    AND NOT EXISTS (
        SELECT 
            INFRACTION.VIDEO 
        FROM 
            INCLUSION
        LEFT JOIN INFRACTION
            ON INFRACTION.VIDEO = INCLUSION.VIDEO
        WHERE INCLUSION.PLAYLIST = PLAYLIST.COD
        AND INFRACTION.VIDEO IS NOT NULL
    )

/*
    --- CONSULTA 04 --- 
    - Selecionar todos os inscritos do canal 'GamerHD' que nao tenham assinatura de membro esse canal
*/

SELECT 
    USER_ACCOUNT.NAME
FROM
    USER_ACCOUNT
JOIN SUBSCRIPTION
    ON SUBSCRIPTION.USERID = USER_ACCOUNT.ID
JOIN CHANNEL
    ON CHANNEL.COD = SUBSCRIPTION.CHANNEL
LEFT JOIN MEMBERSHIP
    ON MEMBERSHIP.CHANNEL = CHANNEL.COD
LEFT JOIN SIGNATURE
    ON SIGNATURE.MEMBERSHIP = MEMBERSHIP.ID
    AND USER_ACCOUNT.ID = SIGNATURE.USERID
WHERE
    CHANNEL.NAME = 'GamerHD'
    AND SIGNATURE.USERID IS NULL


/*
    --- CONSULTA 05 --- (Usando Subconsultas e Exists)
    - Todos os usuarios que comentaram em videos de jogos, 
    - mas que nao comentaram em outras categorias
*/

SELECT 
    USER_ACCOUNT.NAME
FROM
    CHANNEL
JOIN USER_ACCOUNT
    ON USER_ACCOUNT.ID = CHANNEL.USERID
WHERE
    EXISTS(
        SELECT COMMENT.ID
        FROM 
            COMMENT
        JOIN VIDEO
            ON VIDEO.COD = COMMENT.VIDEO
        WHERE CHANNEL.COD = COMMENT.SENDER
        AND VIDEO.CATEGORY = 'Jogos'
    ) AND NOT EXISTS (
        SELECT COMMENT.ID
        FROM 
            COMMENT
        JOIN VIDEO
            ON VIDEO.COD = COMMENT.VIDEO
        WHERE CHANNEL.COD = COMMENT.SENDER
        AND VIDEO.CATEGORY != 'Jogos'
    )

/*
    --- CONSULTA 06 --- (Usando select interno, Group by e LIMIT)
    - Selecionar o comentario com o maior numero de likes
*/

SELECT TXT, CONTAGEM FROM (
    SELECT 
        COMMENT, COUNT(COMMENT) CONTAGEM
    FROM 
        COMMENT_REACTION 
    GROUP BY COMMENT
	ORDER BY COUNT(COMMENT) DESC
) MAIOR
JOIN COMMENT
	ON COMMENT.ID = MAIOR.COMMENT
LIMIT 1;

/*
    --- CONSULTA 07 --- (Consulta em View, Usando select interno e Group by)
    - Selecionar os canais que possuem mais de um video no em alta brasileiro
*/

SELECT CHANNEL.NAME
FROM
    CHANNEL
LEFT JOIN (
    SELECT
        CHANNEL, COUNT(COD) AS NUM_VIDS
    FROM
        em_alta_brasil
    GROUP BY CHANNEL
) ALTA
    ON ALTA.CHANNEL = CHANNEL.COD
WHERE ALTA.NUM_VIDS > 1

/*
    --- CONSULTA 08 --- 
    - Selecionar todas as playlists publicas com videos de categorias que estao no em alta brasileiro
*/

SELECT 
    DISTINCT PLAYLIST.TITLE, PLAYLIST.DESCRIP
FROM PLAYLIST
LEFT JOIN INCLUSION
    ON INCLUSION.PLAYLIST = PLAYLIST.COD
LEFT JOIN VIDEO
    ON VIDEO.COD = INCLUSION.VIDEO
WHERE 
    PLAYLIST.STATUS = 'Público'
    AND VIDEO.CATEGORY IN (
        SELECT CATEGORY FROM em_alta_brasil
    )