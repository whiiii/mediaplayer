CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

CREATE TABLE kappale (id INT PRIMARY KEY, pituus VARCHAR(20),
artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50),
linkki VARCHAR(100)); -- luo taulu

CREATE TABLE kayttaja (kayttajaid INT PRIMARY KEY, nimi VARCHAR(20), salasana VARCHAR(20));

CREATE TABLE soittolista (soittolistaid INT PRIMARY KEY, nimi VARCHAR(20), kesto INT);


--asetetaan tietoja KAPPALE -tauluun
INSERT INTO kappale (artisti, nimi, linkki) VALUES ("Ekamies", "Soliloguy", "http://opengameart.org/sites/default/files/Soliloquy_1.mp3");
INSERT INTO kappale (id, artisti, nimi, linkki) VALUES ("2", "Tokamies", "Arabesque", "http://opengameart.org/sites/default/files/Arabesque.mp3");


--asetetaan tietoja KAYTTAJA -tauluun
INSERT INTO kayttaja (kayttajaid, nimi, salasana) VALUES ("1", "mediaplayer", "testing");


--käyttäjän ja salasanan luonti
CREATE USER mediaplayer IDENTIFIED BY 'testing';

--annetaan oikeudet kaikkeen
GRANT ALL ON * TO mediaplayer;