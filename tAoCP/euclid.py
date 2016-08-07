"""
E1. [Find remainder.] Divide m by n and let r be the remainder. (0 <= r <= n)
E2. [Is it zero?] If r == 0, the algorithm terminates; n is the answer.
E3. [Reduce.] Set m <- n, n <- r, and go back to step E1.
"""

def euclid(m, n):
    """
    Find greatest common divisor of two positive integers.
    """
    # make sure m >= n
    if m < n:
        m, n = n, m

    r = None
    while r != 0:
        r = m % n
        m, n = n, r

    return m


if __name__ == '__main__':
    m = int(input('bigger int>'))
    n = int(input('smaller int>'))
    print(euclid(m, n))
