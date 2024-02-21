import pandas as pd
w_fcast = pd.read_csv('Part13 Pandas Intro/C7DataFiles/csv/weatherdata.csv')
w_fcast['Total Temps'] = w_fcast.iloc[:,1:3].sum(axis=1)

#write to/ create new csv
# w_fcast.to_csv('/Users/Abdulmalik/Documents/Programming/DataFiles/csv/modifedWeatherData.csv')
#write to/ create new csv and omit the index values
w_fcast.to_csv('Part13 Pandas Intro/C7DataFiles/text/WeatherData.txt', index=False, sep='\t')
print(w_fcast)