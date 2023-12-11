// Document
// console.log(document);

// DOM Query methods

// getElementById
const title = document.getElementById('title');
console.log(title);


// getElementByClassName
const listItems = document.getElementsByClassName('listItems');
console.log(listItems);

// quesrySelector
const para = document.querySelector('p');
console.log(para);

// quesrySelectorAll
const paragraphs = document.querySelectorAll('p');
console.log(paragraphs);

// Style an Element with JS
title.style.color = "Red";

// Style multiple elemets with JS
for (i = 0; i < paragraphs.length; i ++){
    paragraphs[i].style.color = "Orange";
};

// Create an Element via the DOM and add it to our document

// Store the UL in a variable
const ul = document.querySelector('ul');
console.log(ul);

// Create our new li element
const newListItem = document.createElement('li');
console.log(newListItem);

// Append the new li to the ul
ul.append(newListItem);

// Set or Modify the text of the new li element
newListItem.innerText = "Item 5";

// Set an attribute for an element
newListItem.setAttribute('id', 'newListItem');

// Remove an attribute
newListItem.removeAttribute('id');

// Add a class to an element
newListItem.classList.add('listItems');

// Remove a class from an element
newListItem.classList.remove('listItems');

// Remove an element froim the DOM
newListItem.remove();