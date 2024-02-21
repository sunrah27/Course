import logging
import time

user ="Shanur"

"To Do: Predict, then Run, and then Investigate"
# #different logging methods and severity
# logging.basicConfig(filename=r"python\Week 10 Code Template\Pt8_ExceptionsCodeBase2024\1_Exceptions\file.log", level=logging.DEBUG) 

logging.basicConfig(filename=r"python\Week 10 Code Template\Pt8_ExceptionsCodeBase2024\1_Exceptions\file.log", level=logging.DEBUG, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')

try:  # attempt to run the indented code block
    num1 = int(input(("Enter your first number: ")))
    num2 = int(input(("Enter your second number: ")))
    answer = num1 / num2
    #Output for developer/what the developer see
    logging.debug(f"Divided {num1} / {num2} = {answer}")
       
except ZeroDivisionError:  # handles exception if code in try block fails
    #Output for user/what the user see
    print("You can't divide a number by zero")
    logging.warning(f"{user} attempted to divide by zero {num1} / {num2}")

else:
    print(f"The answer to {num1} / {num2} = {answer}")
    logging.info(f"{user} carried out the operation {num1} / {num2} = {answer}")

finally:
    print("Closing..... bye bye....")


"To Do: Task 1: Modify"
# Make: 
# 1. Use any one of the logging methods to log error to the Exceptions folder in a file called myFilelog1.log 
