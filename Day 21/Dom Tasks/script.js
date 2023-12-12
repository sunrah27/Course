const mainTitle = document.querySelector('h1');
mainTitle.setAttribute('id', 'idTitle');
mainTitle.innerText = "New heading";

const newUl = document.createElement('ul');
document.body.append(newUl);

const ul = document.querySelector('ul');

for (let i = 1; i <= 3; i++) {
    // Create a new <li> element inside the loop
    const listItem = document.createElement('li');
    listItem.innerText = `List ${i}`;
    listItem.style.color = "Blue";
    ul.append(listItem);
}

mainTitle.remove();