#This program checks for at least one digit in a password
import re
password = input("Enter password: ")
validPassword = re.match(r'[a-zA-Z]*\d[a-zA-Z0-9]*',password)
if validPassword:
    print("Valid password")
else:
    print("Invalid password")

input("\nPress Enter to exit ")
