def varDic(pName, pAge, **kwargs):
    print(f"name is {pName} and age {pAge}")

    for aKey,aValue in kwargs.items():
        print(aKey,aValue)

varDic = ("a", "v")