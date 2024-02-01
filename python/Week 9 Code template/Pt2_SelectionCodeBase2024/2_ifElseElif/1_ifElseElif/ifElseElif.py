# Selection is used to control the flow of the program

score = int(input("Enter a number: "))
#"Predict, then Run, and then Investigate"

# check the condition that score is greater than 100
if score > 100 or score < 0:
    # create avariable and assign it the value Invalid Entry
    grade = "invalid score"
# check the condition that score is between 75 and 100
elif score >= 75 and score <= 100:
    # create avariable and assign it the value A
    grade = "A"
# check the condition that score is between 60 and 74
elif score >= 60 and score <= 74:
    # reassign the grade variable the value B
    grade = "B"
# check the condition that score is between 50 and 59
elif score >= 50 and score <= 59:
    # reassign the grade variable the value C
    grade = "C"
elif score < 50 and score >= 40:
    grade = "D"
else:
    # reassign the grade variable the value F
    grade = "F"

#"To Do: Q&A"
#"What do you think is the equivalent of JS else if in python?"

#"Make"
#"To Do: Task 1: Using if elif and else"
# Create a Menu program that allow user to select between three subject choices
# User must be presented with the value assoiciated with each choice
# for example 1. Music, 2. Maths ....
# A choice must also be available for the user to exit the program
# A message using the print function must be display as per the user choice
def courseLogin():
    myCourse = input("What course are you interested in? ").strip()
    if myCourse == "Music":
        print(f"You have entered {myCourse} \nWelcome to the Music course.")
    elif myCourse == "Maths":
        print(f"You have entered {myCourse} \nWelcome to the Math course.")
    elif myCourse == "English":
        print(f"You have entered {myCourse} \nWelcome to the English course.")
    elif myCourse == "exit":
        print("Exiting program")
    else:
        print(f"You have entered {myCourse} \nSorry we do not offer this course.")

#"To Do: Task 2:"
# Use if else to find item(a specific number) from a list
numList = [56, 78, 100, 45, 88, 71]
search_number = int(input("Pick a numner: "))

if search_number in numList:
    print(f"{search_number} is present in the list.")
else:
    print(f"{search_number} is not present in the list.")

print(numList)