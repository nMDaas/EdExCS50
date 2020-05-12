import csv
import os

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

dburl = 'postgresql://natasha:natasha@localhost:5432/mydb'
engine = create_engine(dburl)
db = scoped_session(sessionmaker(bind=engine))

def main():
    f = open("flights.csv")
    reader = csv.reader(f)
    for origin, destination, duration in reader:
        db.execute("INSERT INTO flights(origin, destination, duration) VALUES (:origin, :destination, :duration)",
            {"origin":origin, "destination":destination, "duration":duration})
        print(f"Added flight from {origin} to {destination} lasting {duration} minutes")
    db.commit()

__name__ = "__main__"
main()
