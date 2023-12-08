function evenNumbers(count) {
    for (let i = 0; i <= count; i++){
        if (i % 2 == 0){
            console.log(i);
        }
    }
};

function fruitList() {
    const fruits = ['Apples', 'Banana', 'Pear', 'Grapes', 'Cherries', 'Pineapples'];
    let data = "";

    for (let i in fruits) {
        console.log(i);
        data+= fruits[i] + " ";
        console.log(data);
    }
};

function fruitItems(){
    const fruits = ['Apples', 'Bananas', 'Pears', 'Grapes', 'Cherries', 'Pineapples'];
    const vegetables = ['Carrots', 'Brocoli', 'Spinach', 'Mushrooms', 'Peas', 'Potatos'];

    fruits.forEach(print);

    function print(items){
        let text = items + ' ';
        console.log(text);
    }
}

function fruitsAndVegs(){
    const fruits = ['Apples', 'Bananas', 'Pears', 'Grapes', 'Cherries', 'Pineapples'];
    const vegetables = ['Carrots', 'Brocoli', 'Spinach', 'Mushrooms', 'Peas', 'Potatos'];

    // fruits.forEach(function (item, index) {
    //     print(index, item);
    // });

    // Above can be written as
    // fruits.forEach((item, index) => {
    //     print(index, item);
    // });

    function print(item, index, array){
        let text = index + ' - We have '+ item + ' in the box of ' + array;
        console.log(text);
    }

    fruits.forEach(print);
    vegetables.forEach(print);
}

function timer(maxTime){
    let time = 0;
    while (time < maxTime) {
        var rTime = maxTime - time;
        console.log('There is ' + rTime + 's left.');
        maxTime--;
    }
}

/*Task 1// Create a for loop where the output will display only the array item that strictly matches
the username(array) .value(array-items) */
/*Example:
const username= ["item1", "item2", "item3", "item4", "item5", "item6"];
 
for(condition){
 
  switch(username):
 
  case "item 1":
        console.log(`Welcome ${username[0]}!`);
        break;
 
  default:
    sorry that's incorrect we don't have that username registered
    break;
 
  check username //filter
  console item(s) that match
}*/

function task1(){
    const username = ["Shanur", "Sunny", "Tim", "Harisson", "Robert", "Tony"];

    var inputName = prompt('Please enter your name.');
    var userFound = false;

    for (var user in username) {
        if (username[user] === inputName){
            console.log('Welcome', username[user]);
            userFound = true;
            break;
        }
    };

    if (userFound === false) {
        console.log('Invalid user')
    }
}

/*Task 2// Check if a string contains the letter 'y'. Print 'yes' if it does and 'no' if it does not
for
//Example:
let string2 ="don't know why";
//example ouput = "yes"*/

function task2(){
    const longText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

    const cPositions = [];

    for (let i = 0; i < longText.length; i++){
        if (longText[i] === 'y') {
            cPositions.push(i);
        }
    }

    if (cPositions.length > 0) {
        console.log(`The character y is found in the positions: ${cPositions.join(', ')}.`);
    } else {
        console.log(`Cannot find character y`);
    }
}


/*
// Task 3
Write code that prints the Fibonacci sequence (0,1,1,2,3,5,8,13)
Example:
function fibonacci(n){
var n1=0;
var n2=1;
var count=2;
var n3;
console.log(n1,n2);
while loop (count<n){
} // figure out the while loop
}
 fibonacci(4) // 0,1,1,2,3,5,8,13,21
*/

function task3(count){
    var num1 = 0;
    var num2 = 1;
    var num3;
    let i = 2;

    console.log(num1);
    console.log(num2);

    while (i < count){
        if (i <= 1){
            num3 = 1;
        } else {
            num3 = num1 + num2;
            num1 = num2;
            num2 = num3;
        }

        console.log(num3);
        i++
    }
}