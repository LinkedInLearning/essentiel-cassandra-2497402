USE BoulesANeige;

CREATE TABLE BoulesANeige (
    Nom VARCHAR PRIMARY KEY,
    Taille int,
    Provenance VARCHAR,
    DateDeFabrication date,
    Note tinyint
);

SELECT * FROM BoulesANeige WHERE Nom = '';

CREATE TABLE BoulesANeigeProvenance (
    Provenance VARCHAR PRIMARY KEY,
    Boules SET<VARCHAR>
);

SELECT * FROM BoulesANeigeProvenance WHERE Provenance = '';
