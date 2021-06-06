#!/usr/bin/env python

""" A script to calculate the area of a triangle using heron's formula."""
import math


def calculate_area_of_a_triangle(a, b, c):
    """
    Calculates the area of a triangle using Heron's formula.

    Heron's formula states that

        Area: sqrt(s * (s-a) * (s-b) * (s-c))
        where s = (a + b + c) / 2
    Note:
        We need to make sure that the sides a, b, c
        actually form a triangle. The two simple rules
        to verify this are...
        1. each side should have length greater than zero
        2. sum of any two sides should be greater than the third one.

    """
    c1 = (a > 0) and (b > 0) and (c > 0)
    c2 = (a + b) > c and (b + c) > a and (c + a) > b

    if not (c1 and c2):
        raise ValueError("This is not a valid triangle!")

    s = (a + b + c) / 2
    area = math.sqrt(s * (s - a) * (s - b) * (s - c))

    return area

if __name__=='__main__':
    print("Calculates the area of a triangle")

    a = float(input("Enter length of first side: "))
    b = float(input("Enter length of second side: "))
    c = float(input("Enter length of third side: "))

    print("""The three sides of the triangle are
          a: {a}
          b: {b}
          c: {c}""".format(a=a, b=b, c=c))
    try:
        area = calculate_area_of_a_triangle(a=a, b=b, c=c)
        print("Area of triangle: {}".format(area))
    except ValueError as e:
        print("The sides {a}, {b}, {c} do not form a valid triangle!".format(a=a, b=b, c=c))
