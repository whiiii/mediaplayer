DROP DATABASE IF EXISTS mediaplayer;

CREATE DATABASE mediaplayer; 

USE mediaplayer; 


CREATE TABLE kappale (id INT, PRIMARY KEY (id), pituus VARCHAR(20),
artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50),
linkki VARCHAR(100)); 

CREATE TABLE kayttaja (id INT, PRIMARY KEY (id), tunnus VARCHAR(20), salasana VARCHAR(100));

CREATE TABLE soittolista (kappaleid INT, kayttajaid INT, FOREIGN KEY (kappaleid) REFERENCES kappale(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));


INSERT INTO kayttaja VALUES (1, 'testaaja', 'dc724af18fbdd4e59189f5fe768a5f8311527050');
INSERT INTO kayttaja VALUES (2, 'henkka', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');


INSERT INTO kappale VALUES (1, '03:44', 'Ekamies', 'free', 'Soliloguy', 'http://opengameart.org/sites/default/files/Soliloquy_1.mp3');
INSERT INTO kappale VALUES (2, '03:27', 'Tokamies', 'free', 'Arabesque', 'http://opengameart.org/sites/default/files/Arabesque.mp3');
INSERT INTO kappale VALUES (3, '01:52', 'Kolmasmies', 'free', 'Gran batalla', 'http://opengameart.org/sites/default/files/Gran%20Batalla.mp3');
INSERT INTO kappale VALUES (4, '02:28', 'Neljasmies', 'free', 'Carnegio', 'http://opengameart.org/sites/default/files/Carnegieo.ogg');
INSERT INTO kappale VALUES (5, '00:56', 'Viidesmies', 'free', 'Sigil', 'http://opengameart.org/sites/default/files/Sigil_3.ogg');
INSERT INTO kappale VALUES (6, '01:04', 'Kuudesmies', 'free', 'Sadorchestra', 'http://opengameart.org/sites/default/files/sadorchestralbgm%28syncopika%29.wav');
INSERT INTO kappale VALUES (7, '01:27', 'Seitsemasmies', 'free', 'Soliloguy', 'public/media/Soliloquy_1.mp3');



INSERT INTO soittolista VALUES (5, 1);
INSERT INTO soittolista VALUES (6, 1);


INSERT INTO soittolista VALUES (5, 2);
INSERT INTO soittolista VALUES (6, 2);
INSERT INTO soittolista VALUES (4, 2);
INSERT INTO soittolista VALUES (1, 2);


CREATE USER mediaplayer;


GRANT SELECT ON mediaplayer.* TO mediaplayer;