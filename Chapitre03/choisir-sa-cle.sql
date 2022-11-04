CREATE TABLE ProfilUtilisateur (
    userid UUID PRIMARY KEY,
    nom varchar
);

CREATE TABLE Visite (
    userid UUID,
    DateVisite timestamp,
    DureeMinutes int,
    PRIMARY KEY (userid, DateVisite)
) WITH CLUSTERING ORDER BY (DateVisite DESC);

SELECT *
FROM Visite
WHERE userid = ''
ORDER BY DateVisite DESC;