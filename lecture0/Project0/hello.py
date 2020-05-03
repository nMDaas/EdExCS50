name = "Alice"
coordinates = (10.0, 20.0)
names = ["Alice", "Bob", "Charlie"]
print(name[0])
print(coordinates[1])

s = set()
s.add(1)
s.add(3)
s.add(5)
s.add(3) #not added
s.add(5)
print(s)

#Python Dictionaries
ages = {"Alice": 22, "Bob": 27}
ages["Charlie"] = 30
ages["Alice"] += 1
print(ages)

#defining functions
def square(x):
    return (x * x)

def main():
    for i in range(10):
        print("{} squared is {}".format(i, square(i)))

if __name__ == "__main__":
    main()

#you can do this from another file too!
from functions import square

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

p = Point(3,5)
print(p.x)
print(p.y)
