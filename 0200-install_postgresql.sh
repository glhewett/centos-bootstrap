yum localinstall http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-centos93-9.3-1.noarch.rpm
yum install -y postgresql93-server postgresql93-devel
/usr/pgsql-9.3/bin/postgresql93-setup initdb
systemctl enable postgresql-9.3.service
systemctl start postgresql-9.3.service

# create app user
# create app db
# make sure path is installed in /etc/profile.d


