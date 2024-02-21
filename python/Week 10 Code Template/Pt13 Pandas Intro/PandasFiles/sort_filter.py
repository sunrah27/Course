import pandas as pd
movies = pd.read_csv('Part13 Pandas Intro/C7DataFiles/text/films.txt')
print(movies)

print(movies.loc[(movies['Rating'] == 'PG') & (movies['Genre'] == 'Action')])

print(movies.loc[(movies['Genre'] == 'Action') | (movies['Genre'] == 'Crime')])

#to reset the index
# movies.reset_index(drop=True, inplace=True) # don't use not working on vscode except jupyter notebok

#use the ".str.contains" to print a record that conatains a specific string
print(movies.loc[movies['Genre'].str.contains('Comedy')])

#use the tilda"~" and ".str.contains" to print all record that does not conatains the string "Comedy" 
print(movies.loc[~movies['Genre'].str.contains('Comedy')])


# Conditional changes to change the value held in a field/column
movies.loc[movies['Genre'] == 'Action', 'Genre'] = 'Anime' 

print(movies)

#alter the value in a field that already exist if a condition is met
movies.loc[movies['Duration']> 105, ['Genre']] = 'Over 2 hrs long'
print(movies)


#create a new field and add a value to the newly created field if a condition is met
movies.loc[movies['Duration']> 105, ['Long']] = 'Over 2 hrs long'

print(movies)

#alter values in multiple fields that already exist if a condition is met
movies.loc[movies['Duration']> 105, ['Genre', 'Yr']] = ['2 hrs long', 2020]
print(movies)



# groupby aggregate
print(movies.groupby(['Duration']).mean())

# groupby aggregate
print(movies.groupby(['Duration']).mean().sort_values('Yr',ascending=True))

# groupby aggregate
print(movies.groupby(['Rating']).sum())

# groupby aggregate
# movies['Genre Total'] = 0 
print(movies.groupby(['Genre']).count())

print("This prints out single column")
#### prints the rating column only
# groupby aggregate 
movies['The Ratings'] = 0
print(movies.groupby(['Rating']).count()['The Ratings'])

#### prints the Genre column only
# groupby aggregate
movies['Genre Total'] = 0 
print(movies.groupby(['Genre']).count()['Genre Total'])

#### prints the Rating and Genre columns as it is useful for working with large data set, in this case see the number of
# times a Rating belongs to a Genre
# groupby aggregate
movies['Total'] = 0 
print(movies.groupby(['Rating','Genre']).count()['Total'])

