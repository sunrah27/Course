let currentInput = '';
let expressionDisplay = document.getElementById('expression-display');

function appendExpression(value) {
    currentInput += value;
    updateDisplay();
}

function calculateResult() {
    try {
        const result = eval(currentInput);
        expressionDisplay.innerText = currentInput;
        currentInput = result.toString();
        updateDisplay();
    } catch (error) {
        currentInput = 'Error';
        updateDisplay();
    }
}

function clearInput() {
    currentInput = '';
    expressionDisplay.innerText = '';
    updateDisplay();
}

function updateDisplay() {
    document.getElementById('result').value = currentInput;
}