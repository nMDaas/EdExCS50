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
#SELECT * FROM flights WHERE origin IN ('New York', 'Lima');
#SELECT * FROM flights WHERE origin LIKE '%a%';

#Calculations
#SELECT AVG(duration) FROM flights;
#SELECT AVG(duration) FROM flights WHERE origin = 'New York';
#SELECT COUNT(*) FROM flights;
#SELECT COUNT(*) FROM flights WHERE origin = 'New York';
#SELECT MIN(duration) FROM flights;
#To find which one has the MIN --> #SELECT * FROM flights WHERE duration = 245;

#Other
#SELECT * FROM flights LIMIT 2;
#SELECT * FROM flights ORDER BY duration ASC;
#SELECT * FROM flights ORDER BY duration ASC LIMIT 3;
#SELECT * FROM flights ORDER BY duration DESC;
#SELECT origin, COUNT(*) FROM flights GROUP BY origin;

#-----Adding/Deleting items to/in the table----

#UPDATE flights SET duration = 430 WHERE origin = 'New York' AND destination = 'London';
#DELETE FROM flights WHERE destination = 'Tokyo';

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
