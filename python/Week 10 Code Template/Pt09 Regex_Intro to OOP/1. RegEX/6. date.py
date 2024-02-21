import re  #Import the re module

# text/string to search 
sentence  = "Take up one 02-12-2021 idea, One 2-06-21 kind of an one 2-06-2020 idea at a time 2-26-2020"
# The curly braces "{}" RegEx use to specify a minimum and maximum
# number of occurrences of the preceding RegEX  {min, max}, {max} 
"\d = 0-9"

searchResult = re.findall(r'\d{1,2}-\d{1,2}-\d{1,2}', sentence)
print(searchResult)

searchResult1 = re.findall(r'\d{1,2}-\d{1,2}-\d{2,4}', sentence)
print(searchResult1)

searchResult2 = re.findall(r'\d{1,4}-\d{1,4}-\d{1,4}', sentence)
print(searchResult2)