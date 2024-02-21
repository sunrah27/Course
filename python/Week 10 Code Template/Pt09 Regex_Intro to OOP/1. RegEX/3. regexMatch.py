import re  #Import the re module

"""\w = any alpha numeric char(any digits/character) = A-Z. Returns a match if the string 
contains alphanumeric characters including underscores. 
For example,\w will match a, b, c, d, 1, 2, 3, etc."""

"""Match
The RegEx Match method used, takes a regular expression 
and search for that pattern right at the beginning of the string"""

# text/string to search 
sentence  = "Take up one idea, One kind oof o often open orange organise an idea at a time"

searchResult = re.match(r'T\w\w', sentence)
print(searchResult)

#only use the group in your result if the return output matches the substring at the start with regex expression 
# print(searchResult.group())