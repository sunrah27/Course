const myObject = {
    name: "John Doe",
    age: 35,
    city: "London"
};

localStorage.setItem("myObject", JSON.stringify(myObject));
console.log(localStorage);