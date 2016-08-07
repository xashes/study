# Store Person objects on a shelve database
#
from person import Person, Manager

bob = Person('Bob Smith')
sue = Person('Sue Jones', job='dev', pay=100000)
tome = Manager('Tom Jones', 50000)

import shelve
with shelve.open('persondb') as db:
    for obj in (bob, sue, tome):
        db[obj.name] = obj
