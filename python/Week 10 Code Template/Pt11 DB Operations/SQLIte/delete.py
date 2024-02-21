from dbConnect import *
import readSongs # import readSongs application
import time

def deleteSongs():
    #songID to be deleted
    idField = input("Enter the SongID of the song you want to delete: ")
    # method1   to check if record exists
    #
    # SELECT FROM SONGS WHERE songiD 1 = songID (idField) entered by the user
    # if Songid == idfield 
#      DELETE FROM SONGS WHERE songiD 1 = songID (1) entered by the user
    #else:
    #   print(There is no match for that record or id)

    cursor.execute("DELETE FROM songs WHERE SongID=" +idField) # songID (4) = 4
    conn.commit()

    print(f"Record {idField} deleted")
    time.sleep(3)
    readSongs.read() # invoke/calling readSongs from the readSong python application

    # method2 to check if record exists
    # try except or use an if statement 
    # if songid != idfield 
    # print(There is no match for that record or id)
    # else:
    #cursor.execute("DELETE FROM songs WHERE SongID=" +idField) # songID (4) = 4

   
# deleteSongs()