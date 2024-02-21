# from tkinter.constants import TRUE
from guizero import App, Text, PushButton, Picture, messagebox, MenuBar, CheckBox, ButtonGroup, Combo, ListBox, Slider
from guizero.Box import Box
def greet():
    print("Greetings")

app = App("First GUI", bg="cadetblue")
box = Box(app, border=True )
label = Text(app, "GUI")
# text = Text(app, text="hello world")
chkbx = CheckBox(app, text="Test")

btnGreet = PushButton(app,text="Greet", command=greet)
slider=Slider(app)
btnGoodbye = PushButton(app,text="Bye", command=app.destroy )
combo = Combo(app, options=["cheese",
"ham", "salad"])
listbox = ListBox(app, items=["cheese",
"ham", "salad"])
choice = ButtonGroup(app,
options=["cheese", "ham", "salad"])

def file_function():
    print("File option")

def edit_function():
    print("Edit option")


menubar = MenuBar(app,
                  toplevel=["File", "Edit"],
                  options=[
                      [ ["File option 1", file_function], ["File option 2", file_function] ],
                      [ ["Edit option 1", edit_function], ["Edit option 2", edit_function] ]
                  ])
app.display()
