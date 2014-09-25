CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

-- luodaan taulut
CREATE TABLE kappale (id INT PRIMARY KEY, pituus VARCHAR(20),
artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50),
linkki VARCHAR(100)); 

CREATE TABLE kayttaja (kayttajaid INT PRIMARY KEY, nimi VARCHAR(20), salasana VARCHAR(20));

CREATE TABLE soittolista (soittolistaid INT PRIMARY KEY, nimi VARCHAR(20), kesto INT);


--asetetaan tietoja KAPPALE -tauluun
INSERT INTO kappale (artisti, nimi, linkki) VALUES ("Ekamies", "Soliloguy", "http://opengameart.org/sites/default/files/Soliloquy_1.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("2", "Tokamies", "Arabesque", "http://opengameart.org/sites/default/files/Arabesque.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("3", "Kolmasmies", "Gran batalla", "http://opengameart.org/sites/default/files/Gran%20Batalla.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("4", "Neljasmies", "Carnegio", "http://opengameart.org/sites/default/files/Carnegieo.ogg");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("5", "Viidesmies", "Sigil", "http://opengameart.org/sites/default/files/Sigil_3.ogg");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("6", "Kuudesmies", "Sadorchestra", "http://opengameart.org/sites/default/files/sadorchestralbgm%28syncopika%29.wav");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("7", "Seitsemasmies", "Soliloguy", "public/media/Soliloquy_1.mp3");


--asetetaan tietoja KAYTTAJA -tauluun
INSERT INTO kayttaja (kayttajaid, nimi, salasana) VALUES ("1", "mediaplayer", "testing");
INSERT INTO kayttaja (kayttajaid, nimi, salasana) VALUES ("2", "testaaja", "testaaja");


--käyttäjän ja salasanan luonti
CREATE USER mediaplayer IDENTIFIED BY 'testing';

--ultimate power
GRANT ALL ON * TO mediaplayer;