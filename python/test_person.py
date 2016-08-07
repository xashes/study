import unittest
import person

class TestPersonClass(unittest.TestCase):
    def setUp(self):
        self.bob = person.Person('Bob Smith')
        self.sue = person.Person('Sue Jones', job='dev', pay=1000000)

    def test_init(self):
        self.assertEqual(self.bob.name, 'Bob Smith')
        self.assertEqual(self.bob.job, None)
        self.assertEqual(self.sue.job, 'dev')
        self.assertEqual(self.sue.pay, 1000000)

    def test_last_name(self):
        self.assertEqual(self.sue.last_name(), 'Jones')

    def test_give_raise(self):
        self.sue.give_raise(0.1)
        self.assertEqual(self.sue.pay, 1100000)

    def test__repr__(self):
        self.assertEqual(str(self.sue), '[Person: Sue Jones, 1000000.00]')

if __name__ == '__main__':
    unittest.main()
