import random

"Modify "
"You have been provided with an incomplete diceRoll.py program with bugs "
"To Do: Task 1: Review, debug and fix the code below, by repacing the '?s' with the code syntax "

def diceroll():
    dice1 = random.randint(1, 6)
    dice2 = random.randint(1, 6)
    print(f"Dice: {dice1} | Dice: {dice2}")

    dice = dice1 + dice2  # What is the total values of both dice

    if dice == 12:  # check if both dice equals 12
        dice = dice * 2  # double the total from both dice
        print(f"You threw {dice}")
    else:
        if dice1 == dice2:
            dice = dice  # 10 = 10
            print(f"You threw {dice}")
        print(f"You threw a total {dice}")

"To Do: Task 2: Add notes below to explain the application in your own words"