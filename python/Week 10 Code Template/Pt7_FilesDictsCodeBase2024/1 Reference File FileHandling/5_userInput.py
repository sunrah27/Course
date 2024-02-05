

"Make"
"To Do: Task 1: Use the code above to ask for user input and then save it to a file called userDetails.txt"
file_path = open('Course/python/Week 10 Code Template/Pt7_FilesDictsCodeBase2024/userDetails.txt', 'w')

with open('Course/python/Week 10 Code Template/Pt7_FilesDictsCodeBase2024/userDetails.txt', 'r+') as data:
    fname = input("Enter you full name: ")
    address = input("Enter your address: ")
    interest = input("Enter your interest: ")
    age = int(input("Enter your age: "))
    # Concatenate the input values into a single string
    data_to_write = f"My name is {fname}.\nI live at {address}.\nMy interests are {interest} and I am {age} years old\n"
    
    # Write the data to the file
    data.write(data_to_write)

"Further reading"
# https://www.w3schools.com/python/python_file_handling.asp