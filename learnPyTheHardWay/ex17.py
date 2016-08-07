#! /usr/bin/env python

from sys import argv
from os.path import exists

script, from_file, to_file = argv

print("Copying from {0} to {1}".format(from_file, to_file))

# we could do this on one line, how?
indata = open(from_file).read()

print("The input file is {} bytes long.".format(len(indata)))

print("Does the output file exists? {}".format(exists(to_file)))
print("Are you ready? Hit RETURN to continue, CTRL-C to abort.")
input("?")

open(to_file, 'w').write(indata)

print("Alright, all done.")
