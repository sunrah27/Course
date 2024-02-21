import re  #Import the re module

"""\w = any alpha numeric char(any digits/character) = A-Z. Returns a match if the string 
contains alphanumeric characters including underscores. 
For example,\w will match a, b, c, d, 1, 2, 3, etc."""

"""RegEx findall method searches a string from the beginning to the end of the string, and return all the sub-string 
that matches the given regular expression in a list and returns an empty list if no match is found."""

# text/string to search 
sentence  = "Take up one idea, One kind oof o often open orange organise an idea at a time"

searchResult = re.findall(r'o\w\w', sentence)
print(searchResult)

# \w+ : use to match one or more  characters/digits after the specified character at the start
searchResult1 = re.findall(r'o\w+', sentence)
print(searchResult1)

# \w* : use to match zero or more  characters/digits after the specified character at the start
searchResult2 = re.findall(r'o\w*', sentence)
print(searchResult2)

# The question mark ? use to match zero or repetition after the specified character at the start
searchResult3 = re.findall(r'o\w?', sentence)
print(searchResult3)

searchResult3 = re.findall(r'o\w', sentence)
print(searchResult3)