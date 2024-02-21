import re  #Import the re module

"""the sub method is used to substitute one substring with another substring"""

# text/string to search 
sentence  = "Take up one idea, One kind of an one idea at a time"
#  use .lower to convert the substrings in the sentence variable if you need to based on your reGex expression
searchResult = re.sub(r'one','two', sentence.lower())
print(searchResult)

# exercise substitute any substring that starts with
# the letter o regardless of the number of characters 
# that follows after 

"Solution"
searchResult1 = re.sub(r"o\w*", "Abdul", sentence)
print(searchResult1)

searchResult3 = re.sub(r'o\w+','Third',sentence)
print(searchResult3)

