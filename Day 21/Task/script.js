// Objects

// Property - Data that is part of an object 
// Methods - Actions that the object can complete

const coffeeShop = {
    name: "Costa",
    branchNumber: 250,
    specialOffers: true,
    staff: ["John", "Aisha", "Rachel", "Umir"],
    menus: {
        food: [
            "Bagel",
            "Toastie",
            "Muffin"
        ],
        drink: [
            "Americano",
            "Latte",
            "Tea"
        ]
    },
    open: function () {
        console.log("We are open come on in!");
    },
    close: function () {
        console.log("Sorry we are closed, come back tomorrow.");
    }
};

// We can acess data within Objects via dot notation
console.log(coffeeShop);
console.log(coffeeShop.name);

// Add data to an object with dot notation
coffeeShop.location = "Manchester";
console.log(coffeeShop);

// Update / Overwrite values in an object with dot notation
coffeeShop.branchNumber = 100;
console.log(coffeeShop);

// Access Nested Data within an object
console.log(coffeeShop.menus.food[1]);
console.log(coffeeShop.menus.drink[2]);

// Call object methods
coffeeShop.open();
coffeeShop.close();

// Nested Objects
const employee = {
    id: 1,
    name: 'John Doe',
    position: 'Software Engineer',
    department: {
        name: 'Engineering',
        location: 'Building A',
        supervisor: {
            name: 'Jane Smith',
            position: 'Engineering Manager'
        }
    }
};

const library = {
    name: 'Public Library',
    location: 'City Center',
    books: [
        {
            id: 'B001',
            title: 'The Great Gatsby',
            author: 'F. Scott Fitzgerald',
            details: {
                genre: 'Fiction',
                year: 1925
            }
        },
        {
            id: 'B002',
            title: 'To Kill a Mockingbird',
            author: 'Harper Lee',
            details: {
                genre: 'Fiction',
                year: 1960
            }
        }
    ]
};


// Christian Perry
// Objects Task: 
// Use the nested objects at the bottom of the reference file to complete the tasks below. Reference the requested data via the objects and log it to the console.
// 1: Log the name of John's supervisor to the console.
// 2: Log the title of 'The Great Gatsby' to the console.

console.log(employee.department.supervisor.name);
console.log(library.books[0].title);