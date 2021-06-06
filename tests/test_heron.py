"""Unit test module for calculating area using Heron's formula"""

import unittest
from main.heron import  calculate_area_of_a_triangle as area

class HeronTests(unittest.TestCase):
    """
    Test suite to verify that the area of a triangle
    calculated by heron's formula is correct under
    all edge cases.
    """
    def test_all_zero_sides_raise_valid_exception(self):
        self.fail()
    def test_one_negative_side_raises_valid_exception_message(self):
        self.fail()
    def test_all_negative_sides_raises_valid_exception_message(self):
        self.fail()
    def test_two_negative_and_one_zero_side_raises_valid_exception_message(self):
        self.fail()
    def test_invalid_positive_sides_raises_valid_exception_messsage(self):
        self.fail()
    def test_invalid_inputs_as_strings_raises_valid_exception_message(self):
        self.fail()
    def test_invalid_inputs_as_lists_raises_valid_exception_message(self):
        self.fail()
    def test_invalid_inputs_as_dicts_raises_valid_exception_message(self):
        self.fail()
    def test_invalid_inputs_as_booleans_raises_valid_exception_message(self):
        self.fail()
    def test_valid_inputs_as_integers_calculates_correct_area(self):
        self.fail()
    def test_valid_inputs_as_floats_calculates_correct_area(self):
        self.fail()
    def test_valid_inputs_as_mix_of_integers_and_floats_calculates_correct_area(self):
        self.fail()
    def test_valid_intermediate_inputs_calculate_correct_area(self):
        self.fail()
    def test_valid_large_inputs_calculate_correct_area(self):
        self.fail()
    def test_valid_extremely_large_float_inputs_calculate_correct_area(self):
        self.fail()
