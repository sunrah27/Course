from dbConnect import *

def read():
    # read data from table songs in c7Music.db 
    cursor.execute("SELECT * FROM songs") # select all songs
    row = cursor.fetchall() # use to fetch all data from the songs table and pass it to variable "row"
    for record in row:
        print(record)
# readSongs()




def read():
    cursor.execute("SELECT * FROM tblfilms") 
    row = cursor.fetchall() 
    for record in row:
        print(record)
read()