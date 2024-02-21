"What is a constructor in python?"
# It is a method that is called when an object is created. This method is 
# defined inside the class and can be used to initialise basic variables

# class is a blueprint/template 
# create a class called MobilePhone

class MobilePhone: #name of class must start with upper case
    def __init__(self):
        # all variables are local only to the class constructor "__init__(self)" 
        #varibeles: make, description, model, price
        self.make = ""
        self.description = ""
        self.model= ""
        self.price = 0.0
# how do we access properties/attributes/variables with their respective values 
# print()
"by creating the object sMobile1 the constructor method is called/invoked automatically"
mobile1 = MobilePhone() # create an instance object from the class MobilePhone
#use the instance object to access the value held in the class variables in the contructor

mobile1.make =  234 #Iphone"
mobile1.description ="Three rear cameras and one two from cameras"
mobile1.model = "11 Pro Max"
mobile1.price = 1236.89
print(f"I have a {mobile1.make} mobile, the model is {mobile1.model} with {mobile1.description} and I got for £{mobile1.price}")

myPhone = MobilePhone() # create an instance object from the class MobilePhone
myPhone.make = input("What make is your phone: ")
myPhone.description = input("What features dose your phone have: ")
myPhone.model = input("What model is it: ")
myPhone.price= input("What is the cost of your phone: ")
print(myPhone.make)
print(myPhone.description)
print(myPhone.model)
# print(myPhone.price)

