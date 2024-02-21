import re  #Import the re module

"""
split
\d  = 0-9 , \D = non digit characters, \s =white space , \S = non white space,
Matches the preceding character one or more times. 
The working of the + character is similar to *, but the +
character omits the pattern if the character doesn't occur. 
For example, abc+ will match abc, abcc, abccc, etc. but not ab
"""


# text/string to search 
sentence  = "Take up on1e idea, One kin9d oof o often open or9ange organi4se an id6ea at a time"
# \d  = 0-9 
searchResult = re.split(r'\d', sentence)
print(searchResult)

# exercise use the the following split method in your regEX 
# \D = non digit characters, \s =white space , \S = non white space

"solution"

searchResult1 = re.split(r'\s', sentence)
print(searchResult1)

searchResult2 = re.split(r'\D', sentence)
print(searchResult2)

searchResult3 = re.split(r'\S', sentence)
print(searchResult3)