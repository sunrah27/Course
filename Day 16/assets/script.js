console.log('Hello World!');

let message = 'This message is stored in a variable called message';

console.log(message);

console.warn('This is a warning');

console.error('this is an error');

const initalInvestment = 25000;
const iRate = 1.5;
const numberOfYears = 5; // in months
const numberOfPayments = 12;


let interestCalc = 1 + (iRate / (100*numberOfPayments))
let iPower = numberOfPayments * numberOfYears
let finalICalc = Math.pow(interestCalc, iPower);

let totalAmount = initalInvestment * finalICalc;

console.log('Principal investment: ', initalInvestment);
console.log('Intrest rate: ', iRate);
console.log('Investment period: ', numberOfYears);
console.log('Final balance: ', totalAmount);

let profile = {fName: 'Tim', lName: 'Jones', age: 27, color: 'green'};
console.log(profile.color);
console.log(profile.age);

console.log(5 * '5');

const myArray = ['Car', 'Train', 'Bus', 'Plane', 'Lorry', true, 89, {color: 'red'}, [1,2,3]];

console.log('This is my Array: ', myArray);
console.log('Third value of the nested Array inside myArray is: ', myArray[8][2]);

const myFlaovurs = ["Vanilla", "Chocolate", "Strawberry", "Mint", "Lemon"];

console.log(myFlaovurs[2] + "", myFlaovurs[3]);
console.log(myFlaovurs);

myFlaovurs.push("Lemon");
console.log(myFlaovurs);

myFlaovurs.push("Orange", "Lime", "Banana");
console.log(myFlaovurs);

myFlaovurs[1] = "Caramel";
console.log(myFlaovurs);

myFlaovurs.pop();
console.log(myFlaovurs);

for (i = 0; i < myFlaovurs.length; i++) {
    console.log(i, myFlaovurs[i]);
}

console.log('7 - 9 =', 7 - 9);
console.log('7 x 9 =', 7 * 9);
console.log('2 to the power of 5 =', 2 ** 5);
console.log('12 / 3 =', 12 / 3);
console.log('12 % 5 =', 12 % 5);

a = "7";
b = 7;

console.log('a === "7"', a==='7');
console.log('b === 7:', b===7);

console.log('a == b:', a==b);
console.log('a === b:', a===b);

console.log('a === "7" or "8"', a === ("7"||"8"));
console.log('a === "7" and "8"', a === ("7"&&"8"));

console.log('Activity');

let c = 3;
let d = 4; 
let e = 10;

console.log('c =', c, 'd =', d, 'e =', e);
console.log('1 - d + c', d + c);
console.log('2 - d != c', d!=c);
console.log('3 - d = c', d=c);
console.log('4 - d === c', d===c);
console.log('5 - d > c', d>c);
console.log('6 - e-c <= c+d', (e-c) <= (c+d));
console.log('7 - e*c > d', (e*c)>d);

(function () {
    var oldLog = console.log;
    console.log = function (message) {
        // Append the message to the specified div
        var consoleOutput = document.getElementById('console-output');
        if (consoleOutput) {
            consoleOutput.innerHTML += '<p>' + message + '</p>';
        }
        // You can also log to the browser console if needed
        oldLog.apply(console, arguments);
    };
})();