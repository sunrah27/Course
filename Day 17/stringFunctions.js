// 1. try and test the code for lines 26 to 40 (slice and substring characteristics)
// 2 Read about STRING IMMUTABILITY

let str1 = 'This is a string';
          //0123456789
//let str2 = "Tim";

// string positions; INDEX starts from ZERO (0)
// T =0, h=1, i=2, s=3
// indexOf

// T=0, h=1, i=2, s=3, space = 4,
console.log(str1.indexOf('is')); // works left to right //2, 5, 13 

//let str1 = 'This as a string'; // 13 

//t=0, h=1, i=2,  s=3, space = 4, is =5,
console.log(str1.lastIndexOf('is')); 
// reverse check from end to start, will feed back first item position (i = 13)




// substring from a string
// slice, substr (substrate), substring

//let str1 = 'This is a string';

// start from 0th position, goes up to 5th position
console.log(str1.slice(0, 7)); // value 0 - 6
// after assign .slice(startIndexValue, endIndexValue) 
// 0,1,2,3,4,5,6,7
// This is
console.log(str1.slice(2, 6));
//is a - Index values returned = 2,3,4,5 (we don't get 6, as acts as end point)

// substr
console.log(str1.substr(1, 6)); 
//'This is a string'; (result = his is) Index Values = 1,2,3,4,5,6


// To target end of a string we use the index value of the characters
console.log('line 22',str1.substring(2, 6),'line 11');// line 22 "is i" line 11
// substring acts in a similar way to slice, however we can add string which concatenate.

str2 = "Tim"; //prompt("what is your name?")
var fullString = `${str2} is learning about JavaScript and ${str1} is his favourite.`;
console.log(fullString.slice(7,14));
// Tim = " is le"
// Constantine ="ine is"
// Ryan = "is lea"



var countries = ["France", "Germany", "Spain", "Netherlands", "Ireland"]
console.log("I've been to a country that contains", countries[3].substring(7,11), "Where did I go?")
// (1,5)




// substring and slice()
// The behaviours for both slice() and substring(),
// will be different when you pass negative values to them.

// commonalities between these.
// a. if start equals end position, it returns an empty string 
//  (0,0) = return empty string
// b. if stop is omitted, it extracts the characters upto the end of the string.(4)
// c. if either argument is greater than the string length, 
//    then the string length will be used.



// characteristics of substring()
// a. if start >(greater) end, then these will be swapped among themselves by the function 
// - substring(10, 2) ==> substring(2, 10)
// b. if either argument is negative, it is treated as ZERO. 
// substring(-1, 2) == (0, 2).  (10, -2) --> (0, 10)



//let str1 = 'This as a string';  
console.log(str1.slice(-6)); //
// ActS in the reverse way, so the the first value won't be collected, 
// start from the second value

// characteristics of slice()
// a. if start >(greater) end, then slice will return an empty string.
// if you put a negative value, then it will 
// start counting from the LAST letter of the string.\











// extracting characters from a string

var name1 = 'This is James James James';
// j = 0, a=1, m=2. e3, s4
console.log(name1.charAt(9)); 



// replace() // This is Josh
// 
let repStr = name1.replaceAll('James', 'Josh'); 
// variableName.replace(valueOne, valueTwo) - valueTwo will subsititute valueOne.
console.log(repStr);