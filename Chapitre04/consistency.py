# utiliser venv :
# python3 -m venv cassandra-env
# cassandra-env\Scripts\activate.bat

# installer le client Cassandra :
# pip install cassandra-driver

from cassandra.cluster import Cluster, ExecutionProfile, EXEC_PROFILE_DEFAULT
from cassandra import ConsistencyLevel
from cassandra.auth import PlainTextAuthProvider
from cassandra.query import SimpleStatement

profile = ExecutionProfile(
    consistency_level=ConsistencyLevel.LOCAL_QUORUM,
    serial_consistency_level=ConsistencyLevel.LOCAL_SERIAL,
    request_timeout=15
)

auth_provider = PlainTextAuthProvider(username='admin', password='Admin1234')

cluster = Cluster(execution_profiles={EXEC_PROFILE_DEFAULT: profile}, auth_provider=auth_provider)
# cluster = Cluster(auth_provider=auth_provider)
session = cluster.connect('boulesaneige')

query = SimpleStatement(
    "SELECT release_version FROM system.local",
    consistency_level=ConsistencyLevel.QUORUM)

print(query.consistency_level)

# session.execute(query)
