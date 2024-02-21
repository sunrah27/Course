import mysql.connector #import MySqlconnector library/module

# connect to the mysqlServer 
conn  = mysql.connector.connect(host = "localhost", user ="root", password ="yourpassword")


if conn.is_connected():
    print("Connected to MySQL")
else:
    print("Connection failed")

cursor = conn.cursor(prepared=True)

# create database 
cursor.execute("CREATE DATABASE databaseName")

# connect to the ddatabse you created above in the mySQl server 
conn  = mysql.connector.connect(host = "localhost",database="databaseName", user ="root", password ="yourpassword")