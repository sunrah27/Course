# The default data type for the input function is string
# The input function allow the program to take user input
"Objectives"
"" '' # Input() funtion in python
"" '' # Obtain input from the keyboard in a program


print("What is your name? ")  # display what is your name

# dynamically asking for user input instead of hardcoded values
"To DO: Task1: Debug the two lines of code below"
name = input(())  # invoke the input funtion and assign to name variable
print("Your name is: ", name)


"After you have fix the bug above, answer the question below"

"To DO: Why is the code block below could be considered more efficient than the code block above? Ignore any commented code"
# invoke the input funtion and assign to name variable to dynamically ask for user input instead of hardcoded values
name1 = input(("What is your name? "))
print("Your name is: ", name1)


"To DO: Knowledge Check: Why use type function as shown below?"
print(type(name))


"For further reading and independent learning refer to the link below"
# https://docs.python.org/3/library/functions.html#input



# The default data type for the input function is string
# The input function allow the program to take user input
"Objectives"
"" '' # Casting and/or conversion

userAge = int(input(("Please enter your age: ")))
print(type(userAge))
print("Your age is: ", userAge)

"To DO: Exercise: Provide screenshot to the anwers to the questions below in the chat"

# To DO:
# what is the equivalent of input in JavaScript?

# what is the equivalent of converting a string to integer inJavaScript?

# Format the print statment using f-string


"To DO: Task 2: Working with the input function and datatypes"

num1 = input("Enter your first number: ")
# To complete the code block above
# Use a variable and invoke the input function ask for a second number
num1, num2 = input("Enter your first and second numbers separated by a space: ").split()
print(f"You entered {num1} and {num2}")
# Add the two numbers
print(f"the sun of {num1} and {num2} is", int(num1)+int(num2))
# print out the total of the two numbers
# Format your print statement to read, The answer to num1Value + num2Value is TotalValue
print(f"the sun of {num1} and {num2} is", float(num1)+float(num2))
"To DO: Task 3: Working with the input function and datatypes"
# Modify you solution above to take in decimal values instead of whole numbers
