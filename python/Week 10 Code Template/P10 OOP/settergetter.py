
class  Developer():
    def __init__(self):
        self.name = ""
        self.salary = ""

    def getName(self):  # create a getter method
        return self.name # return the value passed into the variable
    
    def getPay(self): # create a getter method
        return self.salary # return the value passed into the variable

dev1 = Developer() # create an instance object from the class template 
# set the value of the respective variables from the class
dev1.name = "Anna"
dev1.salary = 1234

print(f"{dev1.name} is paid {dev1.salary} as a developer")

# dev2 = Developer()
# dev2.name = "Lucy"
# dev2.salary = 4234


# print(f"{dev2.getName()} is paid {dev2.getPay()} as a developer")

dev2 = Developer()

dev2.name ="Lucy"
dev2.salary = "3000"
print(f"The developer {dev2.name} is pain a salary of {dev2.salary} as a developer")