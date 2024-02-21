import pandas as pd  # import pandas module

movies = pd.read_csv("pandas/DataFiles/text/films.txt")

# print(movies.loc[(movies['Rating']=='PG') & (movies['Genre'] == 'Action')])

# modify the code below to print action or rating as the criteria
# print(movies.loc[(movies['Rating']=='PG') | (movies['Genre'] == 'Action')])

# print(movies.loc[movies['Genre'].str.contains('Comedy')])

# movies.loc[movies['Genre'] == 'Action' ,'Genre' ] = 'Anime'
# print(movies)
movies.loc[movies["Duration"] > 105, ["Over Hour"]] = "Yes"

# movies.loc[movies['Duration'] >105, ['Genre']] = 'Yes'

print(movies)
