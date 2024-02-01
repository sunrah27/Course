// Storing our div to out put API data.
const dataOutput = document.querySelector('.dataOutput');

// Asynchronous Function to fetch the data
async function getData() {
    // Await the response from the API
    const response = await fetch('https://api.adviceslip.com/advice');
    // We wait on the resposnce and convert it to JSON unton receiving it
    const apiData = await response.json();
    // Once received we returnthe API data tot he work with it
    return apiData.slip.advice;
}

async function updateAdvice() {
    try {
        const apiData = await getData();
        const adviceText = document.createElement('p');
        adviceText.classList.add('advice');
        adviceText.innerText = apiData;
        dataOutput.innerText = '';
        dataOutput.appendChild(adviceText);
    } catch (error) {
        console.error('Error fetching advice:', error);
    }
}

// Add EventListner to wait for the page load before fetching data
document.addEventListener('DOMContentLoaded', async () => {
    await updateAdvice();
    setInterval(updateAdvice, 7000);
})