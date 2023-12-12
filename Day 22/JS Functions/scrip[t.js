const title = document.getElementById('title');
const addBtn = document.getElementById('addBtn');
const delBtn = document.getElementById('delBtn');
const container = document.getElementById('container');


const greeting = () => console.log('Hello!');

title.addEventListener('click', (e) => {
    console.log(e);
});

window.addEventListener('keypress', (e) => {
    console.log(e.key);
});

// Add new element
addBtn.addEventListener('click', () => {
    let newElement = document.createElement('h2');
    newElement.innerText = 'I am a new element!';
    container.append(newElement);
});

const deleteElement = () => {
    container.lastChild.remove();
};

delBtn.addEventListener('click', deleteElement);