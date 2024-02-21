import pandas as pd

dloads = pd.read_csv('Part13 Pandas Intro/C7DataFiles/csv/songs.csv')
print(dloads)
##read first 10 records 
# print(dloads.head(10))
#read last 10 records 
# print(dloads.tail(10))

#read headers..column headins...field names
# print(dloads.columns)
#['DownlID', 'TrackID', 'MemberID', 'Date', 'Time']
# print(dloads['Title'])
# print(dloads.describe)
# print(w_fcast)
# print(w_fcast.tail(10))
# print(w_fcast.columns)
# print(w_fcast[['Reading Timestamp','Ambient Temp','Ground Temp']])
# print(w_fcast.iloc[1])
# print(w_fcast.iloc[0:4])
# print(w_fcast.iloc[1:4])
# print(w_fcast.iloc[2,0])
# print(w_fcast.iloc[2,1])
# print(w_fcast.iloc[2,2])
# for index, row in w_fcast.iterrows():
#     print(index,row)


# for index, row in w_fcast.iterrows():
#     print(index,row['Reading Timestamp'])

# def new_func(w_fcast):
#     for index, row in w_fcast.iterrows():
#         print(index,row['Humidity'])

# new_func(w_fcast)
# print(w_fcast.loc[w_fcast["Ground Temp"] ==12.63])
# score = int(input("Enter player score to search for: "))
# print(w_fcast.loc[w_fcast[" Player score"] ==score])
# print(w_fcast.loc[w_fcast['Player name'] == "TeaDrinker"])
# print(w_fcast.describe)
# print(w_fcast.sort_values('Ambient Temp'))
# print(w_fcast.sort_values('Ambient Temp', ascending=True))
# print(w_fcast.head(10).sort_values('Ambient Temp', ascending=True))
# print(w_fcast.head(10).sort_values(['Ambient Temp', 'Wind Speed'], ascending=False))
# print(w_fcast.head(10).sort_values(['Ambient Temp', 'Ground Temp'], ascending=[1,1]))
#C:\Users\Abdulmalik\Documents\Programming\DataScience
# w_fcast['Total Temp'] = w_fcast['Ambient Temp'] + w_fcast['Ground Temp']
# print(w_fcast.head(5))
# use iloc = integer location first : means all rows, start and end columns to add together
# and sum method with the axis = 1 to add horizontally(left to right) or axis = 0 to add vertically(top
# to bottom)
# w_fcast['Total Temps'] = w_fcast.iloc[:,1:3].sum(axis=1)
# print(w_fcast.head(5))

# use loc to add together the total for a specific field/column
# and sum method with the axis = 1 to add horizontally(left to right) or axis = 0 to add vertically(top
# to bottom)
# print('Total Ambient Temp',w_fcast['Ambient Temp'].sum(axis=0))
# print('Total Ambient Temp',w_fcast['Ambient Temp'].sum(axis=0),'\nTotal Ground Temp',w_fcast['Ground Temp'].sum(axis=0))
"""
print('Total Ambient Temp',w_fcast['Ambient Temp'].sum(axis=0))
print(w_fcast[0:].sum(axis=0))"""

# print(w_fcast.iloc[:,1:].sum())
# print(w_fcast.iloc[:,1:3])
# print(sum(axis=0))
# print(w_fcast.head(10))

