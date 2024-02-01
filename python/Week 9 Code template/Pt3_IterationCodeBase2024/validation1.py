"Task 1: In the terminal Enter numeric values for the first and second number to perform addition and take note of the output "
"Task 2: In the terminal Enter a numeric value  for the first number and string value(ten/one/two) for the second number to perform addition and take note of the output"


def validations():
    global num1, num2
    while True:
        try:
            num1 = int(input("Enter your first number: "))
            break
        except ValueError as e:
            print(f"Error: {e}. \nPlease enter valid number for the first number: ")

    while True:
        try:
            num2 = int(input("Enter your second number: "))
            break
        except ValueError as e:
            print(f"Error: {e}. \nPlease enter valid number for the second number: ")

    answer = num1 + num2
    print(f"The answer to {num1} + {num2} = {answer}")

validations()

def get_valid_number(prompt):
    while True:
        try:
            return int(input(prompt))
        except ValueError as e:
            print(f"Error: {e}. \nPlease enter a valid number.")

def addition():
    num1 = get_valid_number("Enter your first number: ")
    num2 = get_valid_number("Enter your second number: ")

    answer = num1 + num2
    print(f"The answer to {num1} + {num2} = {answer}")

# Call the function
addition()

num3 = 3
num4 = input(f"enter a number :")
print(f"num4 type is {type(num4)} and value is {num4}")

aNum = int(num4)
print(f"aNum's type is {type(aNum)} and value is {aNum}")

"Task 3: Explain why did the program break, when you followed the instructions in task 2 but not in task 1"

# you cannot perform arithmetic operations between an int and string

# https://www.w3schools.com/python/python_ref_exceptions.asp
# https://docs.python.org/3/library/exceptions.html?highlight=exception#Exception

# name = input("What is your name? ")

number = 30
for index in range(number):
    print(f"Index {index}")



name = "test"
truthy = name.istitle()
print(f"{truthy}")

if name.istitle():
    print("valid")
else:
    print("invalid")