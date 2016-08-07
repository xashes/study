"""Utility functions"""

import os
import pandas as pd
import matplotlib.pyplot as plt

def symbol_to_path(symbol, base_dir='data'):
    """Return CSV file path given ticker symbol."""
    return os.path.join(base_dir, "{}.csv".format(str(symbol)))


def get_data(symbols, dates):
    """Read stock data (close) for given symbols from CSV files."""
    df = pd.DataFrame(index=dates)
    if 'sh' not in symbols:
        symbols.insert(0, 'sh')  # add sh for reference, if absent

    for symbol in symbols:
        # read and join data for each symbol
        df_temp = pd.read_csv(symbol_to_path(symbol), index_col='date', parse_dates=True,
                              usecols=['date', 'close'], na_values=['nan'])
        df_temp = df_temp.rename(columns={'close': symbol})
        df = df.join(df_temp)
        if symbol == 'sh':
            df = df.dropna(subset=['sh'])

    return df


def plot_data(df, title="Stock Prices"):
    '''Plot stock prices'''
    ax = df.plot(title=title, fontsize=2)
    ax.set_xlabel('Date')
    ax.set_ylabel('Price')
    plt.show()

def test_run():
    dates = pd.date_range('2015-12-30', '2016-01-06')

    symbols = ['AGJT', 'XYYH', 'CTH']

    df = get_data(symbols, dates)

    # Compute global statistics for each stock
    print(df.mean())
    print(df.median())
    print(df.std())


if __name__ == '__main__':
    test_run()
