#!/usr/bin/env python

"""A utility script to calculate the volume of a spherical body."""

import math


def calculate_volume_of_sphere(radius=0):
    """
    Calculates the volume of a sphere based on its radius.
    """
    if not isinstance(radius, (int, float)):
        raise TypeError("radius must either be an integer or float")
    if radius < 0:
        raise ValueError("radius must a positive real number")
    return (4 * math.pi * (radius ** 3)) / 3


if __name__ == "__main__":
    radius = float(input("Please enter the radius of the sphere: "))
    volume = calculate_volume_of_sphere(radius)
    print(volume)
