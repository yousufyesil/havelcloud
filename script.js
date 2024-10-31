const input_box = document.getElementById("inputBox");
const listContainer = document.getElementById("list-container");


// Füge ein Passwort hinzu
function addElement() {
    let password = document.getElementById("password").innerHTML 
    if(!password) return alert("Bitte geben Sie ein Passwort ein")

    const li = document.createElement("li");
    li.innerHTML = `
      <label>
        <input type="checkbox">
        <span>${task}</span>
      </label>
      <span class="edit-btn">Edit</span>
      <span class="delete-btn">Delete</span>
      `;


}

function removeElement() {
    let password = document.getElementById("password").innerHTML
}
// Update das Passwort



// Sort List



// Caeser Cipher


