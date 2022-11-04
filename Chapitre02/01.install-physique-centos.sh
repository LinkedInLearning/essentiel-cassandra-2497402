## fix pour les repo
cd /etc/yum.repos.d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
yum update -y
yum install vim -y

cd /etc/yum.repos.d/
vim cassandra.repo

--
[cassandra]
name=Apache Cassandra
baseurl=https://redhat.cassandra.apache.org/41x/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://downloads.apache.org/cassandra/KEYS
--

yum update -y
yum install cassandra -y
yum install initscripts -y
service cassandra start

whereis cassandra
cd /usr/sbin/cassandra