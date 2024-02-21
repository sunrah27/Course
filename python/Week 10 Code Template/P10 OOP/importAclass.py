from inherittance import *

class MemoryType(MobilePhone):
    def __init__(self,memoryName, phoneMake, phoneDesc, phoneModel, phonePrice):
        super().__init__(phoneMake, phoneDesc, phoneModel, phonePrice)
        self.type= memoryName

