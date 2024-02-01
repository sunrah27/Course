# Selection is use to control the flow of the program
#"""if condition is met:
#    code block"""
score = 25
userNum = int(input("Enter a user number:"))
 
if score < userNum:  # check the condition that score(26) is greater than userNum(25)
    # do something/execute the code block
    print(f"Good score {userNum}") # f-string


# Selection is used to control the flow of the program

score = 26
userNum = 25  # int(input("Enter a number: "))

#"""if condition is met:
#    code block"""

#""" Else:
#    code block"""


#"Predict, then Run, and then Investigate"
# check the condition that score is greater than userNum(25)
if score > userNum:
    # do something/execute the line of code below, if the condition checked above is true/met
    print (f"You score is {score}")
else:
    # do something/execute the line of code below if the condition checked above is not true/ not met 
    print (f"Your score is less then {userNum}")

#"To Do: Q&A"
#What differs from writing if statement in JS and python ?
# In JS the condition of an IF statement is wrapped in brackets

#"To Do: Task 1:"
#"Modify the code above to use any one of the comparison operators below"

# """Comparison operator compare values
# ==    equal  ( 2 == 2)
# < 	less than
# > 	more than
# <= 	less than or equal to
# >= 	greater than or equal to
# !=    Not equal to"""

if score == userNum:
    # do something/execute the line of code below, if the condition checked above is true/met
    print (f"You got found the number")
else:
    # do something/execute the line of code below if the condition checked above is not true/ not met 
    print (f"Your score is less then {userNum}")