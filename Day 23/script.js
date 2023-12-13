// Access all of our relevant elements from the DOM
const inputKey = document.getElementById('key');
const inputValue = document.getElementById('value');
const submitBtn = document.getElementById('submitBtn');
const clearBtn = document.getElementById('clearBtn');
const readLSBtn = document.getElementById('readLSBtn');
const storageReadOut = document.getElementById('storageReadOut');
const resetLSBtn = document.getElementById('resetLSBtn');
const searchInput = document.getElementById('searchLS');

// Function to save key, value pair to local storage;
const saveToLocalStorage = (e) => {
    e.preventDefault();

    const key = inputKey.value;
    const value = inputValue.value;

    if (key && value) {
        localStorage.setItem(key,value);
        inputKey.value = '';
        inputValue.value = '';
    }
};

// read Local Storage and display in HTML
function readLocalStorage() {
    storageReadOut.innerHTML = '';
    for (let i = 0; i < localStorage.length; i++) {
        let myKey = localStorage.key(i);
        let myValue = localStorage.getItem(myKey);
        let newRead = document.createElement('p');
        newRead.innerHTML = `Key: <span class="spanKey">${myKey}</span> Value: <span class="spanValue">${myValue}</span>`;
        storageReadOut.append(newRead);
    }
};

// Function to search local storage
function searchLocalStorage() {
    const searchKey = searchInput.value.trim();
    const searchValue = localStorage.getItem(searchKey);
    const newRead = document.createElement('p');

    if (searchValue !== null) {
        newRead.innerHTML = `Key: <span class="spanKey">${searchKey}</span> Value: <span class="spanValue">${searchValue}</span>`;
        console.log(newRead);
        storageReadOut.append(newRead);
    } else {
        newRead.innerText = `Key not found: ${searchKey}`;
        storageReadOut.append(newRead);
    }
}


// Event listners
readLSBtn.addEventListener('click', (e) =>{
    e.preventDefault();
    storageReadOut.innerHTML = '';
    let searchKey = searchInput.value.trim();
    let searchValue = localStorage.getItem(searchKey);
    if (searchValue !== null){
        searchLocalStorage();
    } else {
        readLocalStorage();
    }
});

// reset the local storage display
resetLSBtn.addEventListener('click', (e) =>{
    e.preventDefault();
    storageReadOut.innerHTML = 'Local storage data';
    searchInput.value ='';
});

// Save data to local storage
submitBtn.addEventListener('click', saveToLocalStorage);

// clear Local Storage
clearBtn.addEventListener('click', () =>{
    localStorage.clear();
    location.reload();
});
