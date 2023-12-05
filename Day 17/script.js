// Task 1 
let a = String(1 + 1);
console.log('Task 1 - let a = String(1 + 1)');
console.log('typeof a =', typeof a);
console.log('a + a =', a + a);
console.log('a =', a);

//Task 2
let c = String(-12.123);
console.log('Task 2 - let c = String(-12.123)');
console.log('typeof c =', typeof c);
console.log('c + c =', c + c);
console.log('c =', c);

//Task 3
let d = String(true);
console.log('Task 3 - let d = string(true)');
console.log('type of d =', typeof d);
console.log('d + d =', d + d);
console.log('d =', d);

//Task 4
String(false);
console.log('Task 4 - string(false)');
console.log('typeof false =', typeof false);
console.log('false + false =', false + false);
console.log('false =', false);

//Task 5
String(undefined);
console.log('Task 5 - string(undefined)');
console.log('typeof undefined =', typeof undefined);
console.log('undefined + undefined =', undefined + undefined);
console.log('undefined =', undefined);

//Task 6
let b = String(NaN);
console.log('Task 6 - let b = string(NaN)')
console.log('typeof b =', typeof b);
console.log('b + b =', b + b);
console.log('b =', b);


//Task 7
console.log('Task 7 Number conversion');
let e = Number('1abc');
let f = Number(true);
let g = Number(false);
let h = Number(undefined);
let i = Number(null);
let ab = Number("4-5");

console.log("let e = Number('1abc') =", e);
console.log("let f = Number(true) =", f);
console.log("let g = Number(false) =", g);
console.log("let h = Number(undefined) =", h);
console.log("let i = Number(null) =", i);
console.log('let ab = Number("4-5") =', ab);

//Task 8
console.log('Task 8 - Boolean conversion')
let j = Boolean(1);
let k = Boolean(0);
let l = Boolean('');
let m = Boolean(' ');
let n = Boolean(null);
let o = Boolean(NaN);

console.log('let j = Boolean(1) =', j);
console.log('let k = Boolean(0) =', k);
console.log("let l = Boolean('') =", l);
console.log("let m = Boolean(' ') =", m);
console.log('let n = Boolean(null) =', n);
console.log('let o = Boolean(NaN) =', o);

//Tank 9
console.log('Task 9 - Forced coersion')
console.log("'12' / 2 =", '12' / 2);
console.log("2 * '2' =", 2 * '2');
console.log("2 + '2' =", 2 + '2');
console.log("'10' - 2 =", '10' - 2);
console.log("'10' % 2 =", '10' % 2);
console.log('true * 7 =', true * 7);
console.log('true + 10 =', true + 10);
console.log('false * 5 =', false * 5);

//Task 10
console.log('1' + 1);
console.log('1' + 2 + true);
console.log("2 + 2 + '4' + 2 + 2 =", 2 + 2 + '4' + 2 + 2);

function legal () {
    ageLegal = 18;
    console.log(ageLegal);
};

legal();

let str1 = 'This is a string';
console.log(str1.indexOf('i'));
console.log(str1.lastIndexOf('is')); 

console.log(str1);

for (i = 0; i < str1.length; i++) {
    console.log(i, str1[i]);
}

console.log('str1.slice(0, 7) =', str1.slice(0, 8));
console.log('str1.slice(2, 6) =', str1.slice(2, 6));
console.log('str1.substr(1, 6) =', str1.substr(1, 6));
console.log('str1.substring(1, 6)= ', str1.substring(1, 6));
console.log('str1.slice(1, 6) =', str1.slice(1, 6));

let str2 = "Tim";
var fullString = `${str2} is learning about JavaScript and ${str1} is his favourite.`;
for (i = 0; i < fullString.length; i++) {
    console.log(i, fullString[i]);
}
console.log(fullString.slice(7,14));


var countries = ["France", "Germany", "Spain", "Netherlands", "Ireland"]
console.log("I've been to a country that contains", countries[3].substring(7,11), "Where did I go?");
console.log(countries[3]);

console.log(str1.slice(-6));
console.log(str1.slice(-5));
console.log(str1.slice(-4));
console.log(str1.slice(-3));
console.log(str1.slice(-2));
console.log(str1.slice(-1));

let strin = '    Tim             is a JS              learner                       ';


 console.log(strin);
 console.log(strin.length);
 console.log(strin.trim()); // removes whitespace from both ends
 console.log(strin.trim().length);
 console.log(strin.toUpperCase()); // TIM database- stored airports convert uppercase
 console.log(strin.toLowerCase()); //tim database- usernames storing convert lowercase 