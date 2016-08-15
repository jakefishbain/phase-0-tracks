console.log("The script is running!");

function addBlueBorder(event) {
  event.target.style.border = "5px solid blue";
}

var listitems = document.getElementsByTagName("li");
var listitem = listitems[0];

listitem.addEventListener("mouseover", addBlueBorder);






// var createditem = document.createElement("li");
// var currentlists = document.getElementsByTagName('ol');
// var currentlist = currentlists[0];


// var node = document.createTextNode("This is the text.");
// createditem.appendChild(node);

// createditem.appendChild(currentlist);

// createditem.style.border = "5px solid black";

// console.log("The item has been created");