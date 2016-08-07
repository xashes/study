import re

bt = 'bat|bet|bit'
pa = re.compile(bt)
print(type(pa))

m = pa.match('battary')
print(type(m))
print(m.group())
m = pa.match('blt')
if m: m.group()
m = pa.match('He bit me!')
if m: print(m.group())

m = pa.search('He bit me!')
if m: print(m.group())
print(m)
