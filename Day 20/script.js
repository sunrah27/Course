function confirmAge() {
    var ageInput = document.getElementById('age_input');
    var confirmationMessage = document.getElementById('confirm_message');

    // Check if the user entered an age
    if (ageInput.value === '') {
      alert('Please enter your age.');
      return;
    }

    // Ask for confirmation
    let userAge = String(ageInput.value);
    var isConfirmed = confirm('Is '+ userAge + ' your correct age?');

    if (isConfirmed) {
      // Check if the user is over 18
      if (parseInt(ageInput.value, 10) >= 18) {
        alert('You are over 18 years old.');
      } else {
        alert('You are too young.');
      }
    } else {
      // If not confirmed, reset and go back to step 1
      ageInput.value = '';
      confirmationMessage.style.display = 'block';
    }
  }