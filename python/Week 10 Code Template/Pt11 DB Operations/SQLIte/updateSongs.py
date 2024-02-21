from dbConnect import *
import readSongs
import time
def update():
    #songID to be updated
    idField = input("Enter the SongID of the song you want to Update: ")
    #enter the name of the field to be updated
    fieldName = input("Which field would you like to update: (Title, Artist, Genre )? ").title()
    # enter the value of the fieldName to be updated
    newFieldValue = input(f"Enter the value for the {fieldName}")
    print(f"The field value enter by user is {newFieldValue} ")

    # add  single quote to the value entered by the user
    newFieldValue = "'" + newFieldValue + "'"
    print(f"The field value with single quotes added is {newFieldValue} ")

#UPDATE songs set the field to fieldName(user entry) with value = newFieldValue('my Record') where songID (4) = idField4)
    cursor.execute("UPDATE songs SET " + fieldName + "=" + newFieldValue + "WHERE songID = " + idField )
    conn.commit()
    print(f"Record {idField} Updated")
    time.sleep(3)
    readSongs.read()

update()