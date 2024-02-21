import pandas as pd  # import pandas module/library

"1. pass the read_csv method(filepath/filename.ext) to the variable myFile to read a csv file"
# myFile = pd.read_csv("Part13 Pandas Intro/C7DataFiles/csv/tblDownloads.csv")
# print(myFile)

"2. pass the read_csv method(filepath/filename.ext) to the variable myFile to read a text file"
myTxtFile = pd.read_csv("Part13 Pandas Intro/C7DataFiles/text/films.txt")
# print(myTxtFile)

"3. use the head and tail to display specific nuber of rows/records"
# print(myTxtFile.head(10))
# print(myTxtFile.tail(10))

"4. read headers/field names "
# print(myTxtFile.columns)
# ['Reading Timestamp\tAmbient Temp\tGround Temp\tHumidity\tWind Speed\tRainfall\tTotal Temps']
# ['ID', 'Title', 'Yr', 'Rating', 'Duration', 'Genre']

"5. print specific column header and its data"
# myTxtFile = pd.read_csv("Part13 Pandas Intro/C7DataFiles/text/films.txt")
# print(myTxtFile['Title'])
# print(myTxtFile[['Title', 'Yr']])

"6. start print from a specific index location"
# index of the record
# print(myTxtFile.iloc[5])
#                   index of the record, field/column name of the record
# print(myTxtFile.iloc[3, 3])
#
#        start index of the record:and  end index of the record
# print(myTxtFile.iloc[2:10])
# print(myTxtFile)

"7. iterate through the rows and indexes"
for index, row in myTxtFile.iterrows():
    print(index, row)


# for i, r in myTxtFile.iterrows():
#     print(i, r [['Title', 'Genre']])
