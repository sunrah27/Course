from guizero import App, Text, PushButton, Picture


def greet():
    print("Greetings! from my python GUI!")


# create an instance object of the App classs
app = App(title="Simple Gui", bg="cadetblue")  # set the title and bg values for our gui

# create an instance object of the Text classs
label = Text(app, "This is my first GUI!")

# create an instance object of the PushButton classs
btGreet = PushButton(app, text="Click Me", command=greet)


# create an instance object of the PushButton classs
btnClose = PushButton(app, text="Exit", command=app.destroy)

myPic = Picture(app, image="Part12 GUI Intro/py.png", width=50, height=50)
lblPic = myPic


# invoke/call the app instance to display a gui window
app.display()
