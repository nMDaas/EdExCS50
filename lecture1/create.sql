CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  origin VARCHAR NOT NULL,
  destination VARCHAR NOT NULL,
  duration INTEGER NOT NULL
);

INSERT INTO flights (origin, destination, duration) VALUES('New York', 'London', 415);
INSERT INTO flights (origin, destination, duration) VALUES('Shanghai', 'Paris', 760);
INSERT INTO flights (origin, destination, duration) VALUES('Istanbul', 'Tokyo', 700);
INSERT INTO flights (origin, destination, duration) VALUES('New York', 'Paris', 435);
INSERT INTO flights (origin, destination, duration) VALUES('Moscow', 'Paris', 245);
INSERT INTO flights (origin, destination, duration) VALUES('Lima', 'New York', 455);

#-----Queries-----
#To see different relations of flights - \d

#To see TABLE
#SELECT * FROM flights;
#SELECT origin, destination FROM flights;
#SELECT * FROM flights WHERE id = 3;
#SELECT * FROM flights WHERE origin = 'New York';
#SELECT * FROM flights WHERE duration > 500;
#SELECT * FROM flights WHERE destination = 'Paris' AND duration > 500;
#SELECT * FROM flights WHERE destination = 'Paris' OR duration > 500;

#-----Running-----
# To connect to an existing database ( called mydb) on a db server that is already running
# psql mydb natasha
#exit

# To start stop  the database server
open new terminal --> command n
su superman
exit
pg_ctl -D /usr/local/var/postgres start
pg_ctl -D /usr/local/var/postgres stop
