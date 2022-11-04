CREATE KEYSPACE IF NOT EXISTS BoulesANeige
WITH REPLICATION = {
    'class' : 'SimpleStrategy',
    'replication_factor' : '3'
}
AND DURABLE_WRITES = true;

-- supprimer le KeySpace
DROP KEYSPACE IF EXISTS BoulesANeige;