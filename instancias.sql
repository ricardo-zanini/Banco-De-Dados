

INSERT INTO category VALUES ('Entretenimento');
INSERT INTO category VALUES ('Jogos');
INSERT INTO category VALUES ('Educação');
INSERT INTO category VALUES ('Futebol');
INSERT INTO category VALUES ('ASMR');
INSERT INTO category VALUES ('Shitpost');
INSERT INTO category VALUES ('Fashion');
INSERT INTO category VALUES ('Música');
INSERT INTO category VALUES ('Viagem');
INSERT INTO category VALUES ('Culinária');
INSERT INTO category VALUES ('Fitness');
INSERT INTO category VALUES ('Ciência');


INSERT INTO channel VALUES ('1', '#222999BA', 1, 'Canal do Ricardo', 'Canal de jogos e brincadeiras', '2015-10-15', 'Brasil', './documents/channlPic01.png', 'cover.jpg', 'facebook.com/RicardoChannel', 'twitter.com/RicardoChannel', NULL, NULL, NULL, 'ricardoCanal@gmail.com', 3, true, 2, 1000058);
INSERT INTO channel VALUES ('2', '#444567', 3, 'GamerHD', 'Aqui a parada é semanal sempre tem vídeo novo no canal', '2010-07-08', 'Brasil', './documents/picture06.png', 'coverLegal.jpg', 'facebook.com/gamerHd', NULL, NULL, NULL, NULL, 'gamerHDcontato@gmail.com', 3, true, 3, 127000);
INSERT INTO channel VALUES ('3', '#876311BGH', 5, 'Miguelzito Gameplays', 'Somente os verdadeiros gamers deixam o like e compartilham', '2014-09-05', 'USA', './documents/myPicture.png', './arquivos/fotos/gamerbackgroundsFiles.jpg', 'instagram.com/Miguelzitos', NULL, NULL, NULL, NULL, 'MiguelGamesContatoProfissional@hotmail.com', 2, true, 1, 80000);
INSERT INTO channel VALUES ('4', '#333AAAAB', 2, 'TechGurus', 'Canal dedicado a tecnologia e inovação.', '2018-02-20', 'Portugal', './documents/techGurusPic.png', 'techCover.jpg', 'facebook.com/TechGurus', 'twitter.com/TechGurus', 'instagram.com/TechGurus', NULL, NULL, 'techgurus@gmail.com', 0, true, 3, 270000);



INSERT INTO comment VALUES (4, 'Espero que tenha mais sessões assim!', '2', '4', '5', '2024-08-07 00:00:00', true, 0, 0);
INSERT INTO comment VALUES (6, 'A música de fundo é muito alta e distrai o conteúdo.', '2', NULL, '6', '2024-08-05 00:00:00', false, 0, 0);
INSERT INTO comment VALUES (7, 'Preciso de ajuda com a parte final do vídeo, alguém pode explicar?', '3', NULL, '8', '2024-08-04 00:00:00', false, 0, 0);
INSERT INTO comment VALUES (8, 'Comentei ao vivo e minha mensagem não foi lida? Que pena.', '3', NULL, '7', '2024-08-08 00:00:00', true, 0, 0);
INSERT INTO comment VALUES (9, 'Adorei a edição do vídeo! Ficou muito profissional.', '3', NULL, '4', '2024-08-07 00:00:00', false, 0, 0);
INSERT INTO comment VALUES (12, 'Muito interessante, aprendi bastante com este vídeo!', '3', NULL, '1', '2024-08-07 00:00:00', false, 1, 0);
INSERT INTO comment VALUES (5, 'Ótima análise, porém a qualidade do vídeo poderia ser melhor.', '2', NULL, '3', '2024-08-06 00:00:00', false, 0, 0);
INSERT INTO comment VALUES (10, 'Este vídeo me ajudou a resolver um problema específico. Muito obrigado!', '3', NULL, '4', '2024-08-06 00:00:00', false, 0, 2);
INSERT INTO comment VALUES (2, 'Sigo seu canal a anos!!', '3', NULL, '8', '2024-08-04 00:00:00', false, 0, 2);
INSERT INTO comment VALUES (3, 'Isso é exatamente o que eu estava procurando. Obrigado!', '2', NULL, '8', '2024-08-08 00:00:00', false, 2, 1);
INSERT INTO comment VALUES (1, 'Vídeo muito educativo, amo seu canal!', '2', NULL, '2', '2024-08-06 00:00:00', false, 1, 0);
INSERT INTO comment VALUES (11, 'Excelente análise, estou ansioso para mais conteúdos!', '1', '2', '1', '2024-08-05 00:00:00', false, 0, 0);



INSERT INTO comment_reaction VALUES (1, 1, true);
INSERT INTO comment_reaction VALUES (2, 12, true);
INSERT INTO comment_reaction VALUES (4, 3, true);
INSERT INTO comment_reaction VALUES (6, 3, true);
INSERT INTO comment_reaction VALUES (1, 2, false);
INSERT INTO comment_reaction VALUES (2, 2, false);
INSERT INTO comment_reaction VALUES (3, 3, false);
INSERT INTO comment_reaction VALUES (4, 10, false);
INSERT INTO comment_reaction VALUES (6, 10, false);



INSERT INTO download VALUES (1, '1');
INSERT INTO download VALUES (1, '3');
INSERT INTO download VALUES (1, '4');
INSERT INTO download VALUES (1, '6');
INSERT INTO download VALUES (1, '8');
INSERT INTO download VALUES (1, '9');
INSERT INTO download VALUES (7, '1');
INSERT INTO download VALUES (7, '5');
INSERT INTO download VALUES (7, '8');
INSERT INTO download VALUES (7, '7');



INSERT INTO inclusion VALUES ('1', '1', '2024-03-05 00:00:00');
INSERT INTO inclusion VALUES ('2', '7', '2024-05-25 00:00:00');
INSERT INTO inclusion VALUES ('2', '8', '2024-05-25 00:00:00');
INSERT INTO inclusion VALUES ('3', '2', '2018-10-10 00:00:00');
INSERT INTO inclusion VALUES ('3', '3', '2018-10-15 00:00:00');
INSERT INTO inclusion VALUES ('3', '4', '2020-08-22 00:00:00');
INSERT INTO inclusion VALUES ('4', '5', '2017-05-09 00:00:00');
INSERT INTO inclusion VALUES ('4', '6', '2017-05-10 00:00:00');
INSERT INTO inclusion VALUES ('4', '1', '2017-05-15 00:00:00');
INSERT INTO inclusion VALUES ('4', '2', '2023-02-12 00:00:00');



INSERT INTO infraction VALUES (1, '4', 'Vídeo com conteúdo de terceiros', 'Uma parte do vídeo possui conteúdo de terceiros, e por isso sofreu restrições', '00:01:02', '00:03:06', false, false, true, false, true);
INSERT INTO infraction VALUES (2, '1', 'Conteúdo Impróprio', 'Conteúdo não permitido na plataforma', '00:00:12', '00:01:03', false, true, true, false, true);



INSERT INTO membership VALUES (1, '2', 'Cargo Importante', 15.99, 'Cargo especial no canal');
INSERT INTO membership VALUES (2, '3', 'Coruja de ouro', 99.99, 'Corujas de ouro tem acesso a conteúdos extras e acesso àcomunidade do canal');



INSERT INTO playlist VALUES ('1', 1, 'JPOP', 'Playlist de Músicas JPOP', 'Público', '2020-10-10 00:00:00', '2024-03-05 00:00:00', 20, 1);
INSERT INTO playlist VALUES ('2', 4, 'Gameplays', 'Gameplays de Jogos', 'Privado', '2024-05-25 00:00:00', '2024-05-25 00:00:00', 2, 2);
INSERT INTO playlist VALUES ('3', 6, 'Fitness', 'Vídeos de práticas físicas', 'Público', '2018-10-10 00:00:00', '2020-08-22 00:00:00', 5000, 3);
INSERT INTO playlist VALUES ('4', 2, 'Coisas aleatórias', 'Vídeos que achei interessantes', 'Público', '2017-05-09 00:00:00', '2023-02-12 00:00:00', 200, 4);



INSERT INTO signature VALUES (4, 2, '2024-07-01 00:00:00', '2024-08-30 00:00:00');
INSERT INTO signature VALUES (1, 1, '2024-08-01 00:00:00', '2024-08-30 00:00:00');



INSERT INTO status VALUES ('Público', false);
INSERT INTO status VALUES ('Privado', false);
INSERT INTO status VALUES ('Bloqueado', false);
INSERT INTO status VALUES ('Apenas por Link', true);



INSERT INTO subscription VALUES (1, '1', true);
INSERT INTO subscription VALUES (1, '2', true);
INSERT INTO subscription VALUES (1, '3', false);
INSERT INTO subscription VALUES (2, '3', true);
INSERT INTO subscription VALUES (3, '1', false);
INSERT INTO subscription VALUES (4, '2', false);
INSERT INTO subscription VALUES (5, '1', false);
INSERT INTO subscription VALUES (5, '2', false);



INSERT INTO user_account VALUES (1, 'Ricardo Zanini', 'ricardo@gmail.com', '2003-12-12', './pictures/ricardo.png', true);
INSERT INTO user_account VALUES (2, 'Bernardo Cobalchini', 'bernardo@gmail.com', '2002-01-11', './pictures/bernardo.png', false);
INSERT INTO user_account VALUES (3, 'Maria Santos', 'maria@gmail.com', '1996-02-10', './pictures/maria.png', true);
INSERT INTO user_account VALUES (4, 'João Carlos', 'joaoAAAA@gmail.com', '1961-07-23', './pictures/fotoLegal.png', false);
INSERT INTO user_account VALUES (5, 'Miguel Carraro', 'miguelC@gmail.com', '1986-06-13', './pictures/miguel.png', false);
INSERT INTO user_account VALUES (6, 'Agostinho Carrara', 'AGCar@gmail.com', '2008-01-30', './pictures/AgCar.png', false);
INSERT INTO user_account VALUES (7, 'Brandon Saci', 'brandonSaci@hotmail.com', '2002-05-06', './medoDoSaci.png', true);



INSERT INTO video VALUES ('7', '4', 'Gameplay de Elden Ring', 'Uma análise detalhada e gameplay completo de Elden Ring.', 'http://exemplo.com/thumb7.jpg', '00:02:55', '2024-08-10 00:00:00', '2024-08-15 00:00:00', 1080, 1920, 'Privado', 'Jogos', 'RPG', 'Elden Ring, Gameplay, RPG', false, false, false, true, true, true, true, 90000, 0, 0, 0, NULL);
INSERT INTO video VALUES ('8', '4', 'Gameplay de Sonic', 'Uma análise detalhada e gameplay completo de Sonic.', 'http://exemplo.com/thumb7.jpg', '00:44:32', '2024-08-10 00:00:00', '2024-08-15 00:00:00', 1080, 1920, 'Público', 'Jogos', 'Aventura', 'Sonic, Gameplay', false, false, false, false, true, true, true, 90000, 3, 1, 0, NULL);
INSERT INTO video VALUES ('9', '4', 'Gameplay de Persona 3', 'Uma análise detalhada e gameplay completo de Persona 3.', 'http://exemplo.com/thumb7.jpg', '00:21:00', '2024-08-10 00:00:00', '2024-08-15 00:00:00', 1080, 1920, 'Público', 'Jogos', 'JRPG', 'Persona, Gameplay, Jogar', false, false, false, false, true, true, true, 90000, 5, 0, 0, NULL);
INSERT INTO video VALUES ('2', '1', 'Explorando os Alpes', 'Acompanhe-nos enquanto caminhamos pelas paisagens deslumbrantes dos Alpes.', 'http://exemplo.com/thumb3.jpg', '00:15:33', '2024-07-20 00:00:00', '2024-07-25 00:00:00', 720, 1280, 'Público', 'Viagem', 'Aventura', 'Caminhada, Alpes, Viagem', false, false, false, false, true, true, true, 500000, 3, 0, 0, NULL);
INSERT INTO video VALUES ('3', '2', 'Receitas Fáceis de Massa', 'Aprenda a fazer receitas deliciosas e fáceis de massa em pouco tempo.', 'http://exemplo.com/thumb4.jpg', '00:35:12', '2024-06-10 00:00:00', '2024-06-15 00:00:00', 1080, 1920, 'Público', 'Culinária', 'Italiano', 'Massa, Receitas, Cozinha', false, false, false, false, true, true, true, 45000, 0, 2, 0, NULL);
INSERT INTO video VALUES ('4', '2', 'Rotina de Yoga Matinal', 'Uma rotina de yoga relaxante para começar o seu dia com energia.', 'http://exemplo.com/thumb5.jpg', '01:11:07', '2024-08-03 00:00:00', '2024-08-08 00:00:00', 720, 1280, 'Bloqueado', 'Fitness', 'Yoga', 'Yoga, Manhã, Fitness', false, false, true, false, true, true, true, 22000, 4, 1, 0, NULL);
INSERT INTO video VALUES ('5', '2', 'As Maravilhas da Física Quântica', 'Uma introdução ao fascinante mundo da física quântica.', 'http://exemplo.com/thumb6.jpg', '00:07:01', '2024-07-30 00:00:00', '2024-08-04 00:00:00', 1080, 1920, 'Público', 'Ciência', 'Física', 'Física Quântica, Ciência, Física', false, false, false, false, true, true, true, 60000, 0, 0, 0, NULL);
INSERT INTO video VALUES ('6', '3', 'Melhores da Música Clássica', 'Uma coleção das maiores peças de música clássica já compostas.', 'http://exemplo.com/thumb7.jpg', '01:12:37', '2024-08-05 00:00:00', '2024-08-10 00:00:00', 720, 1280, 'Privado', 'Música', 'Clássica', 'Música Clássica, Maiores Sucessos, Música', false, false, false, false, true, true, true, 80000, 0, 0, 0, NULL);
INSERT INTO video VALUES ('1', '1', 'Top 10 Momentos de Jogos', 'Uma compilação dos momentos mais emocionantes da história recente dos jogos.', 'http://exemplo.com/thumb2.jpg', '02:03:04', '2024-08-01 00:00:00', '2024-08-05 00:00:00', 1080, 1920, 'Público', 'Jogos', 'Compilação', 'Jogos, Momentos, Destaques', true, false, false, false, true, true, true, 500058, 0, 3, 0, NULL);



INSERT INTO video_reaction VALUES (1, '1', false);
INSERT INTO video_reaction VALUES (2, '1', false);
INSERT INTO video_reaction VALUES (3, '1', false);
INSERT INTO video_reaction VALUES (4, '3', false);
INSERT INTO video_reaction VALUES (5, '3', false);
INSERT INTO video_reaction VALUES (1, '4', false);
INSERT INTO video_reaction VALUES (5, '8', false);
INSERT INTO video_reaction VALUES (1, '2', true);
INSERT INTO video_reaction VALUES (2, '2', true);
INSERT INTO video_reaction VALUES (3, '2', true);
INSERT INTO video_reaction VALUES (4, '4', true);
INSERT INTO video_reaction VALUES (3, '4', true);
INSERT INTO video_reaction VALUES (5, '4', true);
INSERT INTO video_reaction VALUES (2, '4', true);
INSERT INTO video_reaction VALUES (1, '8', true);
INSERT INTO video_reaction VALUES (2, '8', true);
INSERT INTO video_reaction VALUES (4, '8', true);
INSERT INTO video_reaction VALUES (1, '9', true);
INSERT INTO video_reaction VALUES (2, '9', true);
INSERT INTO video_reaction VALUES (3, '9', true);
INSERT INTO video_reaction VALUES (4, '9', true);
INSERT INTO video_reaction VALUES (5, '9', true);



INSERT INTO BANNED_WORDS VALUES ('catapimbas');
INSERT INTO BANNED_WORDS VALUES ('computador');
INSERT INTO BANNED_WORDS VALUES ('escrivaninha');
INSERT INTO BANNED_WORDS VALUES ('dados');
INSERT INTO BANNED_WORDS VALUES ('FGTS');
INSERT INTO BANNED_WORDS VALUES ('Saci');
INSERT INTO BANNED_WORDS VALUES ('capslock');
INSERT INTO BANNED_WORDS VALUES ('joaninha');
