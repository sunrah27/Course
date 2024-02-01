import math # import (module) math
# This module provides access to the mathematical functions defined by the C standard

radius = float(input("Enter radius: "))
area = math.pi * radius ** 2

"Predict, then Run, and then Investigate"

print(f"The area is {area}")

# Method 1
# Round (round) a number to a given precision in decimal digits.
print(f"The area displayed is rounded to 2 decimal places {round(area, 2)}")

# Method 2
print(f"The area displayed is rounded to 2 decimal places {area:.2f}")
   
""" Debug the code by replacing the questions marks with the correct variables and/or methods Where applicable. """

"Modify"
"To Do: Task 1: Use the floor method to round down to the nearest whole number"
# Method 3
roundDown = math.floor(area)
print(f"The area displayed is rounded to 2 decimal places {roundDown}")

# Method 4
"To Do: Task 2: Use the ceil method to round up to the nearest whole number"
roundUp  = math.ceil()
print(f"The area displayed is rounded to 2 decimal places {roundUp}")

"To Do: Knowledge Check: Why use the 'dir(math)' in the print below?"
print(f"\n{dir(math)}")
# to get a list of all modules int he math library



