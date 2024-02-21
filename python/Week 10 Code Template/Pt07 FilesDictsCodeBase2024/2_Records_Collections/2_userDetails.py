# fname    = input("Enter you full name: ")
# address   = input("Enter your address: ")
# interest = input("Enter your interest: ")
# age      =    int(input("Enter your age: "))


# create a dictionary 
dict1 = {"Fullname": "Jane Smith", "Age": 23, "Hobby":"Coding", 1:"Gamer"}

# create a dictionary with keys but no values 
print("dictionary with keys but no values")
userDetails1 = {"fname": "", "address": "", "interest":"", "age":""}
print(userDetails1)

# Use key to add values to dictionary 

userDetails1["fname"] = input("Enter you full name: ")
print(userDetails1)

"Extension"
"Modify"
"To Do: Task 1: write the input statement to add the remaining values to the userDetails1 dictionary above"
userDetails1 = {"fname": "", "address": "", "interest":"", "age":""}
for key in userDetails1:
    userDetails1[key] = input(f"Please enter your {key}: ")
print(userDetails1)

# create a dictionary with no keys and no values 
print("dictionary with no keys and no values")

"Make"
"To Do: Task 2: Create a dictionary with no keys as shown below, then write the input statement to add the keys and values."
userDetails2 = {}
userDetails2["fname"] = input(f"Enter your full name: ")
userDetails2["address"] = input(f"Enter your address: ")
userDetails2["interest"] = input(f"Enter your interest: ")
userDetails2["age"] = input(f"Enter your age: ")
print(userDetails2)