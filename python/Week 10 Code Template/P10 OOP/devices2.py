class MobilePhone:  # name of class must start with upper case
    # declare these parameters(phoneMake, phoneDesc, phoneModel, phonePrice) in the consructor
    def __init__(self, phoneMake, phoneDesc, phoneModel, phonePrice):
        # all variables are local only to the class constructor "__init__(self)"
        # varibeles: make, description, model, price
        self.make = phoneMake
        self.description = phoneDesc
        self.model = phoneModel
        self.price = phonePrice

    # create a class method
    def phoneDiscount(self):
        # variable    1222        * 20%
        calDiscount = self.price * 0.2
        # variable   1222     minus   20%
        finalPrice = self.price - calDiscount
        print(
            f"Original price £{self.price} with £{calDiscount} discounted, the sale price is now £{finalPrice}"
        )

    # create an inner class
    class MobileStorage:
        def __init__(self, storageSize):
            self.storage = storageSize


# how do we access the phoneDiscount method ?
# method 1
# mobile = MobilePhone("Samsung", "Slim Build", "S22", 1000)
mobile = MobilePhone("Samsung", "Slim Build", "S22", 1000).phoneDiscount()

# method 2
mobile1 = MobilePhone("Iphone", "Touch", "OneX", 1200)
mobile1.phoneDiscount()
# phoneDiscount()

# how do we access the an inner class  ?
# method 1
phnStorage1 = mobile1.MobileStorage("256GB")

print(f"The Storage size is {phnStorage1.storage}")
phnStorage4 = phnStorage1.storage
print(f"The Storage size is {phnStorage4} from storage 4")


# method 2
# variable = outerclass.innerclass(argument)
phnStorage2 = MobilePhone.MobileStorage(
    "512GB"
)  # create an instance object from the inner class though the outerclass
print(f"The Storage size is {phnStorage2.storage}")
