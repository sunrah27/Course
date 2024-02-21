import pandas as pd

ff = pd.read_csv('Part13 Pandas Intro/C7DataFiles/text/films.txt')
##read first 10 records 
# print(ff.head(10))
#read last 10 records 
# print(ff.tail(10))

#read headers..column headins...field names
# print(ff.columns)
" ['ID', 'Title', 'Yr', 'Rating', 'Duration', 'Genre']"
# print(ff['Title'])
# print(ff[['ID', 'Title', 'Yr', 'Rating', 'Duration', 'Genre']])

"read each row using the integer location"
# print(ff.iloc[1])
"read a number of rows by specifying the start and end the integer location"
# print(ff.iloc[3:12])
"read a specific location using row(index) and column(field value)"
# print(ff.iloc[2,1])
# print(ff.iloc[2,2])
# print(ff.iloc[2,3])
# print(ff.iloc[2,4])
# print(ff.iloc[2,5])
# print(ff)

"iterate through records"
# for index, row in ff.iterrows():
#     print(index, row)


# for i, j in ff.iterrows():
#     print(i, j)

# for row in ff.iterrows():
#     print(row)

# for index,row in ff.iterrows():
#     print(index,row['Title'])

# for index,row in ff.iterrows():
#     print(index,row[['Title', 'Genre']])

"use loc to find a specific data base on textual or numerical info"
# print(ff.loc[ff['Title'] == "Batman v Superman"])

# print(ff.loc[ff['Yr'] == 2016])
"search based on user input"
# findTitle = input("Enter the title you want to look for: ")
# print(ff.loc[ff['Title'] == findTitle])

"describe file"
# print(ff.describe)
# sort values
# print(ff.sort_values('Yr'))
# print(ff.head(25).sort_values('Yr'))

# print(ff.head(25).sort_values(['Yr','Rating']))


"................."
# temp = pd.read_csv('/Users/Abdulmalik/Documents/Programming/DataFiles/text/temperatures.txt', delimiter='\t')
# # print(w_fcast)
# print(temp)

# #C:\Users\Abdulmalik\Documents\Programming\DataScience

# print(temp.loc[(temp['Temp'] >=20) & (temp['Time'] >=1200)])

# temp = temp.loc[(temp['Temp'] >=12) | (temp['Time'] >=1200)]
# print(temp)



