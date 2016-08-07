import sys

def harmonic(n):
    total = 0.0
    for i in range(1, n+1):
        total += 1 / i
    return total


if __name__ == '__main__':
    for i in range(1, len(sys.argv)):
        arg = int(sys.argv[i])
        value = harmonic(arg)
        print(value)
