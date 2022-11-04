-- UUID (UUID v4)
SELECT UUID() FROM system.local;
-- TIMEUUID (UUID v1)
SELECT now() FROM system.local;
SELECT unixTimestampOf(now()) FROM system.local;

SELECT cluster_name FROM system.local;

CREATE TABLE ProfilUtilisateur (
    userid UUID PRIMARY KEY,
    nom text,
    prenom text,
    datedenaissance date,
    newsletter boolean,
    lastip inet,
    online duration,
    nbvisites int
);