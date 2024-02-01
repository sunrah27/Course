"""
Use a while loop when the number of iteration is unknown(dont know how many times you want/going 
to do something for)
A while loop also controls the flow of execution in a program

You will need a while statement:
When your program needs to repeat actions, while a condition is satisfied
"""

"To Do: Predict, then Run, and then Investigate"
from random import randint

def gussinggame():
    number = randint(1,11)
    numGuess = int(input("Guess a number between 1 and 10: "))
    while numGuess != number:
        numGuess = int(input("Incorrect\nGuess a number between 1 and 10: "))
    print(f"Congratulations you guessed {numGuess} and it is correct.")

"To Do: Task1: Add comments to the code to explain what the while loop is doing"
"Further reading on python while statements"
# https://www.w3schools.com/python/ref_keyword_while.asp