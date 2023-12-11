const mainTitle = document.querySelector('h1');
mainTitle.setAttribute('id', 'idTitle');

const newUl = document.createElement('ul');
document.body.append(newUl);

const ul = document.querySelector('ul');

for (let i = 1; i < 4; i++) {
    // Create a new <li> element inside the loop
    const newListItem = document.createElement('li');
    newListItem.innerText = `List ${i}`;
    newListItem.style.color = "Blue";
    ul.append(newListItem);
}

mainTitle.remove();