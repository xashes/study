def add(a, b):
    print("Adding {0} and {1}".format(a, b))
    return a + b


def subtract(a, b):
    return a - b


def multiply(a, b):
    return a * b


def divide(a, b):
    return a / b


age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

print("Age: {0}, Height: {1}, Weight: {2}, IQ: {3}".format(age, height, weight, iq))
