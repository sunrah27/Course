# working with large amount of data
import pandas as pd
#the chunsize is used to load the result based on the value set. Five records will be loaded at a time until all the records are loaded
for dloads in pd.read_csv('Part13 Pandas Intro/C7DataFiles/csv/tblDownloads.csv', chunksize=5):
    print(dloads)


