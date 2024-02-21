import pandas as pd
#the chunsize is used to load the result based on the value set. Five records will be loaded at a time until all the records are loaded
members = pd.read_csv('Part13 Pandas Intro/C7DataFiles/csv/tblMembers.csv')
print(members)

# use the 'shape' attribute to show the number of rows and columns
print(members.shape)

#use the info method to display information about the structure of the data
print(members.info())
#object means string

# to display max columns and rows
pd.set_option('display.max_columns', 65)
pd.set_option('display.max_rows', 5)