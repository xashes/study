#! /usr/bin/env python

import unittest

def sum_max2(x, y, z):
    l = [x, y, z]
    l.sort(reverse=True)
    return sum(l[:2])


# unittest
class TestFunc(unittest.TestCase):

    def test_sum_max2(self):
        self.assertEqual(sum_max2(2, 9, 6), 15)


if __name__ == '__main__':
    unittest.main()
