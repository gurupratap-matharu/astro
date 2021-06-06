"""Unit test module for calculating area using Heron's formula"""

import unittest

from main.heron import calculate_area_of_a_triangle as area


class HeronTests(unittest.TestCase):
    """
    Test suite to verify that the area of a triangle calculated by heron's formula
    is correct under all edge cases.
    """

    def test_all_zero_sides_raise_valid_exception(self):
        with self.assertRaises(ValueError):
            area(0, 0, 0)

    def test_one_negative_side_raises_valid_exception_message(self):
        with self.assertRaises(ValueError):
            area(0, 0, -1)

    def test_all_negative_sides_raises_valid_exception_message(self):
        with self.assertRaises(ValueError):
            area(-3, -4, -5)

    def test_two_negative_and_one_zero_side_raises_valid_exception_message(self):
        with self.assertRaises(ValueError):
            area(-3, -4, 0)

    def test_invalid_positive_sides_raises_valid_exception_messsage(self):
        with self.assertRaises(ValueError):
            area(1, 2, 4)

    def test_invalid_inputs_as_strings_raises_valid_exception_message(self):
        with self.assertRaises(TypeError):
            area("1", "2", "3")

    def test_invalid_inputs_as_lists_raises_valid_exception_message(self):
        with self.assertRaises(TypeError):
            area([1, 2, 3])

    def test_insufficient_inputs_raises_valid_exception_message(self):
        with self.assertRaises(TypeError):
            area(1)

    def test_invalid_inputs_as_dicts_raises_valid_exception_message(self):
        with self.assertRaises(TypeError):
            area({"a": 1, "b": 2, "c": 3})

    def test_invalid_inputs_as_booleans_raises_valid_exception_message(self):
        with self.assertRaises(ValueError):
            area(True, True, False)

    def test_valid_inputs_as_integers_calculates_correct_area(self):
        self.assertEqual(area(3, 4, 5), 6)

    def test_valid_inputs_as_floats_calculates_correct_area(self):
        self.assertEqual(area(3.5, 4.5, 5.5), 7.854885024620029)

    def test_valid_inputs_as_mix_of_integers_and_floats_calculates_correct_area(self):
        self.assertEqual(area(3, 4, 5.0), 6.0)

    def test_valid_intermediate_inputs_calculate_correct_area(self):
        self.assertEqual(area(300, 400, 500), 60000)

    def test_valid_large_inputs_calculate_correct_area(self):
        self.assertEqual(area(3000000, 4000000, 5000000), 6000000000000)

    def test_valid_extremely_large_float_inputs_calculate_correct_area(self):
        self.assertEqual(area(3000000.999, 4000000.999, 5000000.999), 6000003496500.415)
