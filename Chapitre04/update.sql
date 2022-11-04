UPDATE profilutilisateur
SET DateDeNaissance = '1995-02-13'
WHERE userid = a5756215-7246-4b61-9d0f-32fbe0f36b04;

SELECT WRITETIME(datedenaissance) 
FROM profilutilisateur
WHERE userid = a5756215-7246-4b61-9d0f-32fbe0f36b04;