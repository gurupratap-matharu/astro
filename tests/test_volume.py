"""Test Suite for volume.py"""
import math
import unittest

from main.volume import calculate_volume_of_sphere


class SphereVolumeTests(unittest.TestCase):
    """
    Test suite to check if the volume of any astronomical spherical body is correctly calculated.
    """

    def test_volume_for_null_radius_is_zero(self):
        calculated = calculate_volume_of_sphere(radius=0)
        expected = 0
        self.assertEqual(calculated, expected)

    def test_volume_for_unit_radius_is_correct(self):
        calculated = calculate_volume_of_sphere(radius=1)
        expected = 4 * math.pi / 3
        self.assertEqual(calculated, expected)

    def test_volume_for_negative_radius_raises_exception(self):
        with self.assertRaises(ValueError):
            calculate_volume_of_sphere(radius=-100)

    def test_volume_for_valid_float_input_is_correct(self):
        calculated = calculate_volume_of_sphere(radius=1.67)
        expected = 4 * math.pi * (1.67 ** 3) / 3
        self.assertEqual(calculated, expected)

    def test_volume_for_large_integer_radius_is_correct(self):
        calculated = calculate_volume_of_sphere(radius=123456789)
        expected = 4 * math.pi * (123456789 ** 3) / 3
        self.assertEqual(calculated, expected)

    def test_volume_for_large_float_radius_is_correct(self):
        calculated = calculate_volume_of_sphere(radius=123456789.9999)
        expected = 4 * math.pi * (123456789.9999 ** 3) / 3
        self.assertEqual(calculated, expected)

    def test_volume_for_string_input_raises_exception(self):
        with self.assertRaises(TypeError):
            calculate_volume_of_sphere(radius='1')
