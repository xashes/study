import pandas as pd


def get_max_close(symbol):
    """Return the maximum closing value for stock indicated by symbol.
    Note: Data for a stock is stored in file: data/<symbol>.csv
    """
    df = pd.read_csv("data/{}.csv".format(symbol))
    return df['close'].max()


def test_run():
    for symbol in ['CTH', 'AGJT', 'XYYH']:
        print('Max close')
        print(symbol, get_max_close(symbol))


if __name__ == '__main__':
    test_run()
