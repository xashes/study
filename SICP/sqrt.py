import unittest


def sqrt(n):
    def sqrt_iter(guess):
        if good_enough(guess):
            return guess
        else:
            guess = improve(guess)
            return sqrt_iter(guess)

    def good_enough(guess):
        return abs(guess**2 - n) < 0.001

    def improve(guess):
        return (guess + n / guess) / 2

    return sqrt_iter(1.0)


class SqrtTestCase(unittest.TestCase):

    def test_sqrt(self):
        self.assertEqual(round(sqrt(9)), 3)
        self.assertEqual(round(sqrt(2), 3), 1.414)


if __name__ == '__main__':
    unittest.main()
