#This program validates a car number plate in the format AANN AAA

import re
validReg = False
while not validReg:
    carReg = input("Please enter car number plate: ")
    validReg = re.match(r"[A-Z]{2}[0-9]{2} [A-Z]{3}",carReg)
    if not validReg:
        print("Invalid car registration")   
    
input("\nThankyou - press Enter to exit ")
