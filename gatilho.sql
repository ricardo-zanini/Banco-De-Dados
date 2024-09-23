/*
    ============================================================
    ------------ ITEM 4 -> Trigger e Procedure -----------------
    ============================================================

    - Essa trigger é responsavel por modificar trechos de comentários publicados que tenham palavras improprias
    - Para isso, toda vez que um usuario tentar publicar um comentario com uma mensagem indevida o sistema procurará
    - por palavras banidas em um dicionario armazenado, e as susbstituirá por XXX
*/

CREATE OR REPLACE FUNCTION COMMENT_RESTRICTION ()
RETURNS trigger AS
$$
     DECLARE
 		AUX text;
		VAR_WORD VARCHAR(100);
     BEGIN
		AUX = NEW.TXT;
		FOR VAR_WORD in SELECT word FROM BANNED_WORDS LOOP
			SELECT REPLACE(AUX, VAR_WORD, 'XXX') INTO AUX;
		END LOOP;
		NEW.TXT = AUX;

        RETURN NEW;
     END;
$$ LANGUAGE 'plpgsql';



CREATE TRIGGER TRIGGER_COMMENT_RESTRICTION
BEFORE INSERT ON COMMENT
FOR EACH ROW EXECUTE PROCEDURE COMMENT_RESTRICTION();