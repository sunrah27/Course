import pandas as pd
movies = pd.read_csv('Part13 Pandas Intro/C7DataFiles/text/test.txt')
print(movies)

print(movies.loc[(movies['Rating'] == 'PG') & (movies['Genre'] == 'Action')])

print(movies.loc[(movies['Rating'] == 'PG') | (movies['Rating'] == 'Comedy')])