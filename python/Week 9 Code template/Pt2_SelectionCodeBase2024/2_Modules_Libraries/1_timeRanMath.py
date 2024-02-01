# What is a library or module?

# This module provides various functions to manipulate time values.
import time

"Predict, then Run, and then Investigate"
name = "John"
print(name)

# invoke the sleep method from the time module

#"To Do: Can you explain what the 'time.sleep(3)' line of code does?"
# program sleeps for 3 seconds

print(f"Printed \n{name}")

print(f"The directory\n{dir()}")


print(f"The directory with the time module\n{dir(time)}")

# import (module) random
import random

#"syntax : variable = method(start and end values)"
# Return random integer in range [a, b], including both end points.
randomNumber = random.randint(1, 100)
print(f"The random value is: {random.randint(1, 100)}")


"Modify "
"To Do: Task 1: Use randint from random module to generate random numbers"
# Modify the code above to generate ramdom numbers between 25 to 50


import math # import (module) math
# This module provides access to the mathematical functions defined by the C standard
radius = 3

"Predict, then Run, and then Investigate"

print(f"The area is {(math.pi*radius*radius)}")

# Method 1
# Round (round) a number to a given precision in decimal digits.
print(f"The area displayed is rounded to 2 decimal places {(math.pi*radius*radius):.2f}")

# Method 2
format_area = "The area displayed is rounded to 2 decimal places: {:.2f}".format(math.pi * radius * radius)
print(format_area)