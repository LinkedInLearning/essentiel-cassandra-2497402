SELECT userid FROM ProfilUtilisateur;

INSERT INTO visite (userid, datevisite, ips, pages)
VALUES (
    847895a4-33a5-4aee-a29b-b32a47609185,
    ToTimestamp(now()),
    {'10.10.10.10'},
    {'/index.html' : ToTimestamp(now())}
  );

SELECT * FROM visite;
