import pandas as pd
import re
movies = pd.read_csv('Part13 Pandas Intro/C7DataFiles/text/films.txt')
# print(movies)

#use the regex with ".str.contains" to print records that conatains multiple strings
print(movies.loc[movies['Genre'].str.contains('Comedy|Crime', regex=True)]) #case sensitive

#use the regex with ".str.contains" to print records that conatains multiple strings
#Use the "flags=re.I" method To ignore upper case 
print(movies.loc[movies['Genre'].str.contains('action|crime', flags=re.I, regex=True)])

#use the regex with ".str.contains" to print records that conatains multiple strings
#Use the "flags=re.I" method To ignore upper case 
#Use the "'^T[a-z]*'" method To print string that starts with letter T followed by any number of a-z lettere 
print(movies.loc[movies['Title'].str.contains('^T[a-z]*', flags=re.I, regex=True)])

#use the regex with ".str.contains" to print records that conatains multiple strings
print(movies.loc[movies['Genre'].str.contains('Comedy|Crime', regex=True)]) #case sensitive

#use the regex with ".str.contains" to print records that conatains multiple strings
#Use the "flags=re.I" method To ignore upper case 
print(movies.loc[movies['Genre'].str.contains('action|crime', flags=re.I, regex=True)])

