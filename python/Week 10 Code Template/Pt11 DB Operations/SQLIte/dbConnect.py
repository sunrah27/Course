import sqlite3 # import sqlite3 module/library

"create a variable 'conn' and pass sqlite3.connect method to it"
# pass in folderpath/dbName.db as parameter, which will create the Db
# if it does not exist/ otherwise use it if it exists
conn = sqlite3.connect("Part11 DB Operations/SQLIte/c7Music.db")
cursor = conn.cursor()# cursor method iterates through database/tables