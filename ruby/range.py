some_range = range(1, 4)
print(max(some_range))
print(2 in some_range)

import string
import random

r_index = string.ascii_lowercase.find('r')
a_to_r = string.ascii_lowercase[:r_index+1]
print(a_to_r)

print(random.sample(a_to_r, 2))

age = 55
if 0 < age <= 12:
    print('Still a baby')
elif 12 < age <= 99:
    print('Teenager at heart!')
else:
    print('You are getting older...')
