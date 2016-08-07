import pandas as pd
import numpy as np

s = pd.Series(np.random.randn(4), name='daily returns')

s.index = ['AMZN', 'AAPL', 'MSFT', 'GOOG']

for i in range(2):
    print(i)

print(["Hello" for i in range(2)])
