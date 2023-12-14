let JSONString = `{
    "people":[
      {"firstName":"David", "lastName":"Smith", "age": 27, "married": true, "image": "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png?20181011102003"},
      {"firstName":"Amy", "lastName":"Blake", "age": 43, "married": true, "image": "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png?20181011102003"},
      {"firstName":"Mark", "lastName":"Foster", "age": 56, "married": false, "image": "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png?20181011102003"}
    ]
}`;

localStorage.setItem('myObject', JSONString);

const myBtn = document.getElementById('myBtn');
const container = document.getElementById('container')

function displayObjectFromLocalStorage() {
    const storedJSONString = localStorage.getItem('myObject');

    const JSONObject = JSON.parse(storedJSONString);

    for (let i = 0; i < JSONObject.people.length; i++){
        const person = JSONObject.people[i];

        let nameElement = document.createElement('p');
        nameElement.id = 'nameId';
        let ageElement = document.createElement('p');
        ageElement.id = 'ageId';
        let marriageStatusElement  = document.createElement('p');
        marriageStatusElement.id = 'marriageStatusId';
        
        let imageElement = document.createElement('img');
        let cardDiv = document.createElement('div');
        cardDiv.classList.add('card');

        let fullName = `${person.firstName} ${person.lastName}`;
        nameElement.textContent = `${fullName}`;
        ageElement.textContent = `${person.age}`;
        marriageStatusElement.textContent = `${person.married ? 'Married' : 'Not married'}`;
        imageElement.src = person.image;
        imageElement.alt = `${fullName} image`;
        
        cardDiv.appendChild(nameElement);
        cardDiv.appendChild(ageElement);
        cardDiv.appendChild(marriageStatusElement);
        cardDiv.appendChild(imageElement);
        container.appendChild(cardDiv);
    };
}

myBtn.addEventListener('click', () =>{
    container.innerHTML = '';
    displayObjectFromLocalStorage();
});