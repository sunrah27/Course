
class MobilePhone: #name of class must start with upper case
    # declare these parameters(phoneMake, phoneDesc, phoneModel, phonePrice) in the consructor
    def __init__(self, phoneMake, phoneDesc, phoneModel, phonePrice):
        # all variables are local only to the class constructor "__init__(self)" 
        #varibeles: make, description, model, price
        self.make = phoneMake
        self.description = phoneDesc
        self.model= phoneModel
        self.price = phonePrice

# how do we access properties/attributes/variables with their respective values 
# print()
"by creating the object sMobile1 the constructor method is called/invoked automatically"
mobile = MobilePhone("Samsung", "Slim Build", "S22", 1256.78)  # create object instance and pass the respective values as arguments
print(f"I have a {mobile.make} mobile, the model is {mobile.model} with {mobile.description} and I got for £{mobile.price}")

# exercise ask for user input dynamically for the respective parameters and print out the phone details 

"solution1"
myPhone = MobilePhone(input("What make is your phone: "),
input("Type description for your phone: "),
input("Type model of your phone: "),
input("What is the cost of your phone: "))

print(f"I have a {myPhone.make} mobile, the model is {myPhone.model} with {myPhone.description} and I got it for £ {myPhone.price}")

"solution2"
myMake = input("What make is your phone: ") # value held/stored in my make is passed in as an argument
myDesc = input("Type description for your phone: ")
myModel = input("Type model of your phone: ")
myPrice = float(input("What is the cost of your phone: "))

myPhone1 = MobilePhone(myMake, myDesc, myModel, myPrice)
print(f"I have a {myPhone1.make} mobile, the model is {myPhone1.model} with {myPhone1.description} and I got it for £ {myPhone1.price}")