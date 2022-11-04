DROP TABLE IF EXISTS ProfilUtilisateur;

CREATE TYPE telephone (
    codepays int,
    numero text
)

CREATE TABLE ProfilUtilisateur (
    userid UUID PRIMARY KEY,
    nom text,
    prenom text,
    datedenaissance date,
    newsletter boolean,
    lastip inet,
    online duration,
    nbvisites int,
    tel FROZEN<telephone>
    -- ou tel TUPLE<int, text>
);
