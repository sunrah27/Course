"What is a constructor in python?"
# It is a method that is called when an object is created. This method is 
# defined inside the class and can be used to initialise basic variables

# class is a blueprint/template 
# create a class called MobilePhone

class MobilePhone: #name of class must start with upper case
    def __init__(self):
        # all variables are local only to the class constructor "__init__(self)" 
        #varibeles: make, description, model, price
        self.make = "Samsung"
        self.description = "Slim build, touch screen"
        self.model= "Galaxy S10+"
        self.price = 1234.45
# how do we access properties/attributes/variables with their respective values 
# print()
"by creating the object sMobile1 the constructor method is called/invoked automatically"
sMobile1 = MobilePhone() # create an instance object from the class MobilePhone
#use the instance object to access the value held in the class variables in the contructor
print(sMobile1.make) 
print(sMobile1.model) 
print(sMobile1.description) 
print(sMobile1.price) 

print(f"I have a {sMobile1.make} mobile, the model is {sMobile1.model} with {sMobile1.description} and I got for £{sMobile1.price}")

iphone11 = MobilePhone()  # create an instance object from the class MobilePhone
iphone11.make = "Iphone"
iphone11.description = "Retina Display"
iphone11.model = "11"
iphone11.price = 1576

print(iphone11.make)
print(iphone11.description)
print(iphone11.model)
print(iphone11.price)

# exercise   create an instance of the mobile phone class
# ask for user input for the variables: make, description, model, price
"Solution"

myPhone = MobilePhone() # create an instance object from the class MobilePhone
myPhone.make = input("What make is your phone: ")
myPhone.description = input("What features dose your phone have: ")
myPhone.model = input("What model is it: ")
myPhone.price= input("What is the cost of your phone: ")
print(myPhone.make)
print(myPhone.description)
print(myPhone.model)
print(myPhone.price)


