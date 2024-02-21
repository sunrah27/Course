from mysqlConnect import *

# the cursor object will iterate through the tables 
# the for loopp will print all the tables 
cursor.execute("SHOW TABLES")
for tables in cursor:
    print(tables)