from guizero import App, Text, TextBox, PushButton


app = App(title="Adding Numbers", bg="cadetblue")

lbltxt1 = Text(app, text="Enter First number:")
# create an instance object from the TextBox class to capture user input
txtBox1 = TextBox(app)

lbltxt2 = Text(app, text="Enter Second number:")
# create an instance object from the TextBox class to capture user input
txtBox2 = TextBox(app)

displayAnswer = Text(
    app, text="Answer will be displayed here", color="white", bg="black"
)


def addition():
    # the value property captures the value.user input in txtBox1 and passed it to num1 variable
    num1 = txtBox1.value
    num2 = txtBox2.value

    # create a variable store/hold the calculation of num1 + num2  and convert it as integer
    answer = int(num1) + int(num2)

    # displayAnswer = answer( num1 + num2)
    displayAnswer.value = answer


btnCalc = PushButton(app, command=addition, text="Add")

app.display()
