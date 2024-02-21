import mysql.connector  # import MySqlconnector library/module

# variable(conn) = use mysql.connectorlibrary.connect(host = "localhost =mySQLserver")method
conn = mysql.connector.connect(
    host="localhost", database="c9music", user="root", password="password"
)

if conn.is_connected():
    print("Connected to DB")
else:
    print("Not connected to DB")

cursor = conn.cursor(prepared=True)
