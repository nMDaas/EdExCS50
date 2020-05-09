CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  origin VARCHAR NOT NULL,
  destination VARCHAR NOT NULL,
  duration INTEGER NOT NULL
);

# To connect to an existing database ( called mydb) on a db server that is already running
# psql mydb natasha
#exit

# To start stop  the database server
open new terminal --> command n
su superman
exit
pg_ctl -D /usr/local/var/postgres start
pg_ctl -D /usr/local/var/postgres stop

#To see Table - \d
