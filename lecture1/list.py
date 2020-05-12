import os

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

# See https://docs.sqlalchemy.org/en/13/core/engines.html for help

#engine = create_engine(os.getenv("DATABASE_URL"))
dburl = 'postgresql://natasha:natasha@localhost:5432/mydb'
engine = create_engine(dburl)
db = scoped_session(sessionmaker(bind=engine))

def main():
    flights = db.execute("SELECT origin, destination, duration FROM flights").fetchall()
    for flight in flights:
        print(f"{flight.origin} to {flight.destination}, {flight.duration} minutes.")

if __name__ == "__main__":
    main()
