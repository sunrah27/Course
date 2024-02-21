class MobilePhone: #name of class must start with upper case
    # declare these parameters(phoneMake, phoneDesc, phoneModel, phonePrice) in the consructor
    def __init__(self, phoneMake, phoneDesc, phoneModel, phonePrice):
        # all variables are local only to the class constructor "__init__(self)" 
        #varibeles: make, description, model, price
        self.make = phoneMake
        self.description = phoneDesc
        self.model= phoneModel
        self.price = phonePrice

listOfPhones = [] # declare an empty list called listOfPhones

while True:
    # create an instance object and pass the input function as arguments to ask user for the respective values
    addMobile = MobilePhone(
    input("What make is your phone: "),
    input("Type description for your phone: "),
    input("Type model of your phone: "),
    float(input("What is the cost of your phone: "))
    )
    listOfPhones.append(addMobile.make+" "+addMobile.description+" "+addMobile.model+" "+str(addMobile.price))
    anotherMobile = input("Add another mobile? Y/N: ").upper() # ask the user if they want to add another mobile
    if anotherMobile == "N": # check user response 
        break # if user response above is "N", break out of the loop to stop adding new mobile phone
print(listOfPhones)

# loop through the phone list
for mobile in listOfPhones:
    #print each mobile phone in the list 
    print(mobile)

    # write the list of phone to a file for persistent storage 
    with open("Part9 Regex_Intro to OOP/2. OOP/PhoneList1.txt", "a") as myphoneFile1:
        saveToFile = myphoneFile1.write(f"\n{mobile}") 


# adding file using the listOfPhones List 
with open("Part9 Regex_Intro to OOP/2. OOP/PhoneLists.txt", "a") as myphoneFile2:
    phones = str(listOfPhones)
    saveToFile = myphoneFile2.write(f"\n{phones}") 


"""phones = str(listOfPhones)
# [mobile1, #mobile2, #mobile3]"""