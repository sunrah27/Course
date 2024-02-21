from mysqlConnect import *
import time

def addMember():
    members  = []
    #memberID is auto increment


    fname = input("Enter your Firstname: ")
    lname = input("Enter your Lastname: ")
    email = input("Enter your email: ")


    members.append(fname)
    members.append(lname)
    members.append(email)

    try:
        cursor.execute('INSERT INTO members VALUES(NULL, %s, %s,%s)', members)
        conn.commit()
        print(f"Added member {fname}")

        time.sleep(3)
        cursor.execute('Select * FROM members')
        row = cursor.fetchall()
        for record in row:
            print(record)
    
    except:
        raise("record not added")
    finally:
        conn.close()

addMember()

