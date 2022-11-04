INSERT INTO profilutilisateur (
    userid,
    datedenaissance,
    lastip,
    nbvisites,
    newsletter,
    nom,
    online,
    prenom,
    tel
  )
VALUES (
    UUID(),
    '1995-02-12',
    '10.10.10.10',
    1,
    false,
    'Achab',
    1h,
    'Jamila',
    {codepays : 33, numero : '06 10 22 10 22'}
  );