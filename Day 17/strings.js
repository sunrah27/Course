console.log('Strings are sequence of characters..');

let str1 = 'James';
let exStr = "Hello"; // convention double quote
let str2 = "Charlie's book";
console.log(str2);



// if you have to use single quotes in the string, surround it with double(") quotes.
// if you have to use double quotes in the string, surround it with single(') quotes.
// backticks mac (key left to Z `), windows (underneath esc key)
let bothQuo = `Charlie's book and 'Wonderland' "message" quotation`;
console.log(bothQuo);



// concatenation
console.log(str1 +" is learning about JavaScript and "+ str2 + " " + "is his favourite.");




// template literals - syntax = ` ${variable} `
let str3 = document.getElementById("first").value //"Mike" //sign in page - username and password - pick up the username and then apply it to the string literal

//`Welcome ${username} !, we think your phone number is ${phone}` 
//username.id 
let str4 =  "IT for Beginners" // user input //document.getElementById("book").value



var fullString = `${str3} is learning about JavaScript and ${str4} is his favourite.`;

// variables that we use should be changeable. pernsonalising spaces on a website. 
console.log(fullString);




// length
console.log(str4.length); //16 length starts at 1 (not zero-indexed)




// escape sequence characters 
// \ - escape character, second character will give the instruction (n, t or \)
// \n = newline, \t = tabspace, \\ - to add an \ in the string , \" - to add quotes

let aNewStr = 'hello\neveryone\thow\\are you?? \"escape\"';
console.log(aNewStr);

//document.write("They call it an \"escape\" character");

// "\n" = newline
// "\t" = tabspace
// "\\" = add a \ in the string
// "\"" = this adds a double quote in your string











/*
for
//Example:

//example output = "yes"


let letter = prompt("Please enter a letter from a-z:");
console.log(letter);
let string2 ="don't know why";

for (character in string2){
    console.log(character);
    if (character == letter){
        console.log("Yes")
    } else {
        console.log("No")
    }
};
*/





