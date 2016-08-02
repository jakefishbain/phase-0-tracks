// Reverse a string
// save each letter in the string as an individual variable and then add them back together in one string

function reverse(string) {
  var blank = '';
  for (var i = string.length - 1; i >=0; i--)
    blank += string[i];
  return(blank); 
}

console.log(reverse("test"));
var hello = reverse("hello");
console.log(hello);

if (hello == "olleh") {
  console.log(hello);
}