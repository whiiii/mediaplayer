DROP DATABASE IF EXISTS mediaplayer;

CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

-- luodaan taulut
CREATE TABLE kappale (id INT, PRIMARY KEY (id), pituus VARCHAR(20),
artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50),
linkki VARCHAR(100)); 

CREATE TABLE kayttaja (id INT, PRIMARY KEY (id), tunnus VARCHAR(20), salasana VARCHAR(100));

CREATE TABLE soittolista (kappaleid INT, kayttajaid INT, FOREIGN KEY (kappaleid) REFERENCES kappale(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));


--asetetaan tietoja KAPPALE -tauluun
INSERT INTO kappale (artisti, nimi, linkki) VALUES ("Ekamies", "Soliloguy", "http://opengameart.org/sites/default/files/Soliloquy_1.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("2", "Tokamies", "Arabesque", "http://opengameart.org/sites/default/files/Arabesque.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("3", "Kolmasmies", "Gran batalla", "http://opengameart.org/sites/default/files/Gran%20Batalla.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("4", "Neljasmies", "Carnegio", "http://opengameart.org/sites/default/files/Carnegieo.ogg");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("5", "Viidesmies", "Sigil", "http://opengameart.org/sites/default/files/Sigil_3.ogg");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("6", "Kuudesmies", "Sadorchestra", "http://opengameart.org/sites/default/files/sadorchestralbgm%28syncopika%29.wav");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("7", "Seitsemasmies", "Soliloguy", "public/media/Soliloquy_1.mp3");

--luodaan käyttäjä ja salasana
INSERT INTO kayttaja VALUES (1, "mediaplayer", "dc724af18fbdd4e59189f5fe768a5f8311527050");

--asetetaan tietoja SOITTOLISTA-tauluun
INSERT INTO soittolista VALUES (5, 1);
INSERT INTO soittolista VALUES (6, 1);


--käyttäjän luonti
CREATE USER mediaplayer;

--ultimate power
GRANT SELECT ON mediaplayer.* TO mediaplayer;