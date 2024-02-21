from guizero import App, ButtonGroup, Text, PushButton
def myJokes():
    if choiceOfJokes.value == "Stick":
        displayJoke.value = "What is brown and sticky?......Stick"
    
    elif choiceOfJokes.value == "Fluff":
        displayJoke.value = "What is pink and fluffy?.....................pink fluff"
    
    elif choiceOfJokes.value == "Chicken":
        displayJoke.value = "Why did the chicken cross the road?.....................to finish the code"

    elif choiceOfJokes.value == "Frog":
        displayJoke.value = "What happens to a frog's car when it breaks down?..........it gets toad away"

appyJokes = App(title="Jokes",  bg="cadetblue", height= 300, width=300)
lbltxt1 = Text(appyJokes, text="Select a Joke from the list below")
' create an instance of the ButtonGroup class to add four options for user selection'
choiceOfJokes = ButtonGroup(appyJokes, options=["Stick", "Fluff", "Chicken", "Frog"], selected= "Stick")
btnGetJoke = PushButton(appyJokes, command=myJokes, text="Show Joke")
displayJoke = Text(appyJokes, text="Joke loading.....")

appyJokes.display()