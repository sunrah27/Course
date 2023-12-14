const objName = document.getElementById('name');
const age = document.getElementById('age');
const married = document.getElementById('married');

let JSONString = `{
    "people":[
      {"firstName":"David", "lastName":"Smith", "age": 27, "married": true},
      {"firstName":"Amy", "lastName":"Blake", "age": 43, "married": true},
      {"firstName":"Mark", "lastName":"Foster", "age": 56, "married": false}
    ]
}`

console.log(JSONString);

let JSONObject = JSON.parse(JSONString);

console.log(JSONObject.people[2].firstName)

let david = JSONObject.people[0];
console.log(david);

objName.innerText = `Name: ${david.firstName} ${david.lastName}`;
age.innerText = `Age: ${david.age}`;
married.innerText = `Married: ${david.married}`;