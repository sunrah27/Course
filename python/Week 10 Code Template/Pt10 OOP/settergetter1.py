class  Developer():
    def __init__(self, myName, mySalary, lName):
        # exercise modify the code to add a third parameter 
        self.name = myName
        self.salary = mySalary
        self.lastname = lName
        self.job = "None" # job is a string variable 

    def getName(self):  # create a getter method
        return self.name # return the value passed into the variable
    
    def getPay(self): # create a getter method
        return self.salary # return the value passed into the variable
    
    def getLastname(self):
        return self.lastname

# class JobType():
    def getJob(self):
        return self.job  # return my job variable with value passed into it 
# setter method 
    def setJob(self, myJob):  # declare myJob as a parameter
        self.job  = myJob # myJob is a parameter that will pass the value into the variable job
"""
job1 = JobType()
job1.setJob("Python Programmer")
print(job1.job)"""
    
dev1 = Developer("John", 1234, "Musk") # create an instance object from the class template 
print(f"{dev1.name} is paid {dev1.salary} as a developer")

# call the setJob method and pass in the an argument
dev1.setJob("Python")
print(dev1.job)

print(f"{dev1.name} {dev1.lastname} is paid {dev1.salary} as a developer programming in {dev1.job}")

dev1.setJob("HTML")
print(dev1.job)
