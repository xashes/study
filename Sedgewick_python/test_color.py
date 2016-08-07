import unittest
from color import Color

class ColorTestCase(unittest.TestCase):
    def setUp(self):
        self.red = Color(255, 0, 0)
        self.blue = Color(0, 0, 255)

    def test_get_red(self):
        self.assertEqual(self.red.get_red(), 255)

    def test_get_green(self):
        self.assertEqual(self.red.get_green(), 0)

    def test_get_blue(self):
        self.assertEqual(self.blue.get_blue(), 255)

if __name__ == '__main__':
    unittest.main()
