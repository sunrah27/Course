console.log('JavaScript Objects');

// Objects
let string = 'Hello';
console.log('String length:', string.length);

// Property - Data that is part of an object
// Methods - Actions that the object can complete

const coffeeShop = {
    name: "Costa",
    branchNumeber: 250,
    specialOffers: true,
    staff: ["John", "Steve", "Jame", "Ali"],
    menu: {
        food: ["Bagel", "Muffin", "Chocolate"],
        drink: ["Tea", "Coffee", "Mocha"],
    },
    open: function() {
        console.log("We are open")
    },
    close: function() {
        console.log("Sorry we are closed.")
    },
};

// We can accees data within Object via dot notation
console.log(coffeeShop);
console.log(coffeeShop.name);

// Add data to an object with dot notation
coffeeShop.location = "Manchester!";
console.log(coffeeShop);

// Update / Overwrite values in an object with dot notation
coffeeShop.branchNumeber = 100;
console.log(coffeeShop);

// Access Nested Data within an object
console.log(coffeeShop.menu.food[0]);

// Call object methods
coffeeShop.open();
coffeeShop.close();