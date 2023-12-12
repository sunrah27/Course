const eventBtn = document.getElementById('eventBtn');
const eventImg = document.getElementById('flipImg');

function showHideImg(){
    var imgStyle = window.getComputedStyle(eventImg);

    if (imgStyle.display === 'none'){
        eventImg.style.display = 'block';
    } else {
        eventImg.style.display = 'none';
    }
};

eventBtn.addEventListener('click', showHideImg);

const inputText = document.getElementById('textInput');
const inputBtn = document.getElementById('textBtn');
const submitContainer = document.getElementById('submitDiv');


function handleTextSubmission(){
    let newSubmission = document.createElement('p');
    const inputValue = inputText.value.trim();

    if (inputText.value.length > 0){
        newSubmission.innerText = inputValue;
        submitContainer.append(newSubmission);
    }
};

inputText.addEventListener('focus', () => {
    inputText.value = '';
});

inputBtn.addEventListener('click', handleTextSubmission);