# From Learning Python P845
# File person.py (final)
"""
Record and process information about people.
Run this file directly to test its classes.
"""

from classtools import AttrDisplay


# Add record field initialization

class Person(AttrDisplay):
    """
    Create and process person records
    """

    def __init__(self, name, job=None, pay=0):
        self.name = name
        self.job = job
        self.pay = pay

    def lastName(self):
        return self.name.split()[-1]

    def giveRaise(self, percent):
        self.pay = int(self.pay * (1 + percent))


class Manager(Person):
    """docstring for Manager"""
    def __init__(self, name, pay):
        super(Manager, self).__init__(name, 'mgr', pay)


    def giveRaise(self, percent, bonus=.10):
        Person.giveRaise(self, percent+bonus)


if __name__ == '__main__':
    bob = Person('Bob Curly')
    sue = Person('Sue Jones', job='dev', pay=100000)
    print(bob.name, bob.pay)
    print(sue.name, sue.pay)
    print(bob.lastName(), sue.lastName())
    sue.giveRaise(.10)
    print(sue.pay)
    print(sue)
    tom = Manager('Tom Jones', 50000)
    tom.giveRaise(.10)
    print(tom.lastName())
    print(tom)
