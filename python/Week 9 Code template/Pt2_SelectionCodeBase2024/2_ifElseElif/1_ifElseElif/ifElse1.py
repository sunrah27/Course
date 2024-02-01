# Selection is used to control the flow of the program

pStudy = input("Enter your program of study: ").title()
curProgram = "Bootcamp"

#"Predict, then Run, and then Investigate"
# check the condition that pStudy value is same as the value held in curProgram
if pStudy == curProgram:
    # do something/execute the line of code below if the condition is checked above true/met
    print(f"Welcome to {curProgram}")
else:
    # The block(else) of code will be executed if the codition in the if block is not true/not met
    print("This course is not on our lists of programmes")

#"Modify"
#"To Do: Exercise"
# Modify the code above to use the "!=" operator, or the "not" operator
if pStudy != curProgram:
    # do something/execute the line of code below if the condition is checked above true/met
    print(f"Welcome to {curProgram}")
else:
    # The block(else) of code will be executed if the codition in the if block is not true/not met
    print("This course is not on our lists of programmes")
#"Your Turn to: Apply and Build"

#"Task 1: Using if and else"
# 1. Create a program that find the minimum value between two numbers using if else
myNumber = int(input(f"Pick a numeber: "))
if myNumber > 50:
    print("Your number is greate then 50.")
else:
    print("Your number is less then 50.")
#"Task 2"
# 2.Create a python program to check user's password and print "Logged In" if successful
myPassword = "Password"
if myPassword == (input("Please enter your password: ")).strip():
    print("You have logged In")    
else:
    # else "Not Logged In“ when unsuccessful.
    print("Not logged In")