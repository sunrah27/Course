//Home security system
function homeSecurity() {
    let mode = prompt('Are you Home or Away? (Enter Home or Away)');
    let motionDetected = true;
    let doorWindowOpened = false;
    let designatedEntryPoints = [];

    if (mode === "Away") {
        if (motionDetected) {
            console.error("Triggering alarm - Motion detected in Away mode.");
        } else if (doorWindowOpened) {
            console.warn("Recording event - Door/window opened in Away mode.");
        } else {
            console.log("Monitoring system - Away mode.");
        }
    } else if (mode === "Home") {
        if (motionDetected) {
            console.log("Turning on lights - Motion detected in Home mode.");
        } else if (doorWindowOpened) {
            if (designatedEntryPoints.includes(doorWindowOpened)) {
                console.log("Recording event - Designated entry point opened in Home mode.");
            } else {
                console.error("Triggering alarm - Non-designated entry point opened in Home mode.");
            }
        } else {
            console.log("Monitoring system - Home mode.");
        }
    } else if (mode === "Night") {
        if (motionDetected) {
            console.log("Turning on light - Motion detected in Night mode.");
        } else if (doorWindowOpened) {
            console.error("Triggering alarm - Door/window opened in Night mode.");
        } else {
            console.warn("Enhancing security - Night mode.");
        }
    } else {
        console.error("Invalid mode.");
    };
};


//Task 1
function checkPassword(){
    const password = 'SecretPassword';
    let userPass = prompt('Please enter your password:')
    if (password === userPass) {
        console.log('Thank you for logging in.')
    } else {
        console.log('The password you have entered is incorrect, please try again.')
    };
};

//Task 2
function publicFare(){
    const adultAge = 18;
    let age = prompt('Pleaes enter your age.');
    numAge = Number(age);

    if (numAge < adultAge) {
        console.log('Child fare.');
    } else if (numAge => 65) {
        console.log('Senior citizen fare.')
    } else {
        console.log('Adult fare.')
    };
};

//Task 3
function onlinePurchase(){
    let userAge = prompt('What is your age?');
    let numAge = Number(userAge);
    let hasProofOfID = window.confirm('Do you have ID?');

    if (numAge >= 21 && hasProofOfID) {
        console.log("Congratulations! You can purchase the online item.");
    } else if (numAge >= 21 || hasProofOfID) {
        console.log("You need both age over 21 and proof of ID to complete the purchase.");
    } else {
        console.log("Sorry, you are not eligible to purchase the online item.");
    };
};

//Task 4
function mortgageApp(){
    let isUKResident = window.confirm('Are you a UK citizen?');
    let hasVisa = window.confirm('Do you have a Visa?');
    let isHomeOwner = window.confirm('Are you a home owner?');
    let creditScore = 700;

    do {
        inputAge = prompt('What is your age?');
        customerAge = Number(inputAge);
    
        if (isNaN(customerAge)) {
            console.log('Please enter a valid number for age.');
        }
    } while (isNaN(customerAge));

    if ((isUKResident || hasVisa) && isHomeOwner) {
        if (creditScore >= 650) {
            if (customerAge >= 18 && customerAge <= 65) {
                console.log("Congratulations! You are eligible for a mortgage.");
            } else {
                console.log("Sorry, you are not eligible. Age must be between 18 and 65.");
            }
        } else {
            console.log("Sorry, you are not eligible. Insufficient credit score.");
        }
    } else {
        console.log("Sorry, you are not eligible. You must be a UK resident or Visa holder and a home owner.");
    };
};

//Task 5
function studentGrade() {

    let studentScore = prompt('Please enter the students exam score:');
    let maxScore = 100;

    switch (true) {
        case (studentScore >= 90):
            console.log("Grade: A. You scored", studentScore, "out of 100");
            if (studentScore === 100) {
                console.log("Perfect score! Well done!");
            }
            break;

        case (studentScore >= 80):
            console.log("Grade: B");
            if (studentScore >= 85) {
                console.log("Good job! You're close to an A. You scored", studentScore, "out of 100");
            }
            break;

        case (studentScore >= 70):
            console.log("Grade: C");
            if (studentScore >= 75) {
                console.log("You're making progress. Keep it up! You scored", studentScore, "out of 100");
            }
            break;

        default:
            console.log("Grade: F");
            console.log("Sorry, you did not pass. Consider studying more. You scored", studentScore, "out of 100");
    }
};

console.log('Which app do you want to run?\n\n 1 - homeSecurity()\n 2 - checkPassword()\n 3 - publicFare()\n 4 - onlinePurchase()\n 5 - mortgageApp()\n 6 - studentGrade()')