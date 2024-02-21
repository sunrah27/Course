"""Regular expressions are patterns that help a user match character combinations 
in text files and strings. You can use regular expressions to filter or find a
specific pattern in the output of a  command or a document.
 Import the re module:"""

import re  #Import the re module

"""\w = any alpha numeric char(any digits/character) = A-Z. Returns a match if the string 
contains alphanumeric characters including underscores. 
For example,\w will match a, b, c, d, 1, 2, 3, etc."""

# text/string to search 
sentence  = "Take up one idea, One kind oof an idea at a time"

"find/search for the substring that starts with the letter 'o', follwed by any two characters"
# variable = module/library.method(search/reGex_expression,text/string to search )
searchResult = re.search(r'o\w\w', sentence) # search returns the first substring that reGex expression

#The group method is a method on the result that comes back which will output the exact substring that matches
# the given pattern specified in the search
print(searchResult.group())

#Exercise use the seard method to find a substring that 
# starts with the letter i follwed by any number of characters
"Solution"
searchResult1 = re.search(r'i\w\w', sentence)
print(searchResult1.group())

Search = re.search(r"i\w\w\w",sentence)
print(Search.group())

word = re.search(r'i\w+', sentence)
print(word.group())