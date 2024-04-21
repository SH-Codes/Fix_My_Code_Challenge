#!/usr/bin/python3

class Square:
    
    def __init__(self, width):
        self.width = width

    def area(self):
        """ Area of the square """
        return self.width ** 2

    def perimeter(self):
        """ Perimeter of the square """
        return 4 * self.width

    def __str__(self):
        return "Square with side length {}".format(self.width)

if __name__ == "__main__":
    s = Square(width=12)
    print(s)
    print("Area:", s.area())
    print("Perimeter:", s.perimeter())

