//allow driver code to input an array into a function being called
//iterate original array into new data structure with key/value pairs for "phrase" and "length"
//sort new array and/or pull out key/value pair with largest length and print to console

var sorted = {};

function longest(arr) {
  for (var i = 0; i < arr.length; i++){
    sorted[arr[i]] = arr[i].length;
  }};

longest(['eee', 'eeee', 'eeeee']);
console.log(sorted);

