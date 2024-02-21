"""Inheritance is the process of defining a new object with the help of 
an existing object. Two inheritance key principles are as follows
 1. Accessing existing objects functionality 
 2. Updating existing objects functionality
 Two other key terms are as follows
 1. Re-Usability and 2. IS-A Relation"""

class MobilePhone: #name of class must start with upper case
    # declare these parameters(phoneMake, phoneDesc, phoneModel, phonePrice) in the consructor
    def __init__(self, phoneMake, phoneDesc, phoneModel, phonePrice):
        # all variables are local only to the class constructor "__init__(self)" 
        #varibeles: make, description, model, price
        self.make = phoneMake
        self.description = phoneDesc
        self.model= phoneModel
        self.price = phonePrice

    
     # create a class method 
    def phoneDiscount(self):
        #variable    1222        * 20%
        calDiscount = self.price * 0.2
         #variable   1222     minus   20%
        finalPrice = self.price - calDiscount
        print(f"Original price £{self.price} with £{calDiscount} discounted, the sale price is now £{finalPrice}")

# create a child class that inherits from the parent class without the super method 
class MobileCPU(MobilePhone): # passed in the name of the parent class inside the braces of the child class as parameter
    # pass the parameter of the child class and all the paramters needed from the parent class
    def __init__(self, phoneCPU,phoneMake, phoneDesc, phoneModel, phonePrice):
        # import the MobilePhone parent class contructor
        MobilePhone.__init__(self,phoneMake, phoneDesc, phoneModel, phonePrice )
        self.processor = phoneCPU

# create a child class that inherits from the parent class with the super method 
class MobileScreen(MobilePhone):
    def __init__(self, phoneScreen,phoneMake, phoneDesc, phoneModel, phonePrice):
        super().__init__(phoneMake, phoneDesc, phoneModel, phonePrice)
        self.screen = phoneScreen


#How do we access the child class and it's properties(values)
"create an instance object from the child class"
mobilePhoneCPU = MobileCPU("Snap Dragon", "Iphone", "Gorrila Glass", "Pro MAx", 1243.56)
print(f"My {mobilePhoneCPU.make} {mobilePhoneCPU.model} comes with {mobilePhoneCPU.description}, {mobilePhoneCPU.processor}\
CPU and cost £{mobilePhoneCPU.price}")

# Exercise access the MobileScreen child class and it's properties(values)
"Solution"
mobilePhoneScreen = MobileScreen("Retina Screen ", "iPhone", "Gorrila Glas", "Pro Max", 1243.99)
print(f"My {mobilePhoneScreen.make} {mobilePhoneScreen.model} comes with {mobilePhoneScreen.description}, \
{mobilePhoneScreen.screen} and cost £{mobilePhoneScreen.price}")
