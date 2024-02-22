class Car: # create a super class called car
    def __init__(self, make, model, year):
        self.cMake = make
        self.cmodel = model
        self.cYear = year

    # create a class method 
    def startCar(self): # create a method to start the car
        print("Staring car")

    def stopCar(self):
        print("stopping car")

class Ferrari(Car):
    def __init__(self,turbo, make, model, year):
        super().__init__(make, model, year)
        self.engine = turbo

    # create a method to overide/shadow a method from the super class 
    def startCar(self):
        print("Remote Start")

    def startFerrariCar(self):
        print("Button Start")

class BMW(Car):
    def __init__(self,convertible, make, model, year):
        super().__init__(make, model, year)
        self.bmwConvert = convertible
       
# create an instance object from the Ferrari child class 
f142 = Ferrari("V12:5.0 Litre", "Testerosa", "PowerF", 2019)
f142.startCar()
f142.startFerrariCar()
print(f"I am  driving {f142.cMake} {f142.cmodel} with a {f142.engine} engine made in {f142.cYear} ")
f142.stopCar()

bmwCar = BMW("Soft Open Top", "BMW", "118", "2006")
bmwCar.startCar()
print(f"I am  driving {bmwCar.cMake} {bmwCar.cmodel} with a {bmwCar.bmwConvert} convertibe and was made in {bmwCar.cYear} ")
bmwCar.stopCar()