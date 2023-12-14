// Things that can be improved
// 1 - display the key and value in the local storage data after submission - DONE
// 2 - check if a key already exists and update corresponding value - DONE
// 3 - display notice when there is no data stored in local storage - DONE
// 4 - add a counter of how much data is stored in local storage
// 5 - improve the display of local storage data - DONE
// 6 - export local storage data
// 7 - search for partial string matches

document.addEventListener('DOMContentLoaded', function() {

    // Access all of our relevant elements from the DOM
    const keyInput = document.getElementById('keyInput');
    const valueInput = document.getElementById('valueInput');
    const addBtn = document.getElementById('addBtn');
    const searchInput = document.getElementById('searchInput');
    const searchViewBtn = document.getElementById('searchViewBtn');
    const resetBtn = document.getElementById('resetBtn');
    const clearBtn = document.getElementById('clearBtn');
    const localStorageBody = document.getElementById('localStorageBody');

    // Function to save key, value pair to local storage
    const saveToLocalStorage = () => {
        console.log('saveToLocalStorage');
        localStorageBody.innerHTML = '';
        let key = keyInput.value;
        const value = valueInput.value;
        if (key && value){
            key = key.charAt(0).toUpperCase() + key.slice(1).toLowerCase();
            if (localStorage.getItem(key) !== null){
                localStorage.setItem(key, value);
            } else {
                localStorage.setItem(key, value);
            }
            keyInput.value = '';
            valueInput.value = '';
            searchInput.value = '';
        }
        searchLocalStorage(key);
    };

    // Function to read Local Storage and display in HTML
    const readLocalStorage = () =>{
        console.log('readLocalStorage');
        localStorageBody.innerHTML = '';
        if (localStorage.length = 0){
            for (let i = 0; i < localStorage.length; i++) {
                let key = localStorage.key(i);
                let value = localStorage.getItem(key);
                displayRow(key, value);
            }
        } else {
            const row = document.createElement('tr');
            row.innerHTML = `<td colspan="2">No data in local storage.</td>`;
            localStorageBody.appendChild(row);
    }};

    // Function to search local storage
    function searchLocalStorage(e) {
        console.log('searchLocalStorage');
        const value = localStorage.getItem(e);
        if (value !== null) {
            displayRow(e, value);
        } else {
            displayNotFoundRow(e);
    }};

    function displayRow(key, value){
        console.log('displayRow');
        const row = document.createElement('tr');
        row.innerHTML = `<td>${key}</td><td>${value}</td>`;
        localStorageBody.appendChild(row);
    };

    function displayNotFoundRow(key) {
        console.log('displayNotFoundRow');
        const row = document.createElement('tr');
        row.innerHTML = `<td colspan="2">Key not found: ${key}</td>`;
        localStorageBody.appendChild(row);
    };

    // Event listeners
    // Save data to local storage
    addBtn.addEventListener('click', () =>{
        console.log('addBtn');
        saveToLocalStorage();
    });

    // Button to search or view local storage
    searchViewBtn.addEventListener('click', () =>{
        console.log('searchViewBtn');
        localStorageBody.innerHTML = '';
        let key = searchInput.value.trim();
        key = key.charAt(0).toUpperCase() + key.slice(1).toLowerCase();
        if (key.length > 0){
            searchLocalStorage(key);
        } else {
            readLocalStorage();
        }
    });

    // Button to reset the local storage display
    resetBtn.addEventListener('click', () =>{
        console.log('resetBtn');
        localStorageBody.innerHTML = '';
        keyInput.value = '';
        valueInput.value = '';
        searchInput.value = '';
    });

    // Button to clear Local Storage
    clearBtn.addEventListener('click', () =>{
        console.log('clearBtn');
        localStorage.clear();
        location.reload();
    });
});