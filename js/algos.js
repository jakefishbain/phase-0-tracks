//allow driver code to input an array into a function being called
//iterate original array into new data structure with key/value pairs for "phrase" and "length"
//sort new array and/or pull out key/value pair with largest length and print to console

function LongSort(original) {
  this.original = original;

  var sorted = {};

  
  this.longest = function longest(hash) {
  var highest = '';
    for (var key in hash){
      if (hash[key] > highest.length) {
      highest = key;
      };
    }return highest
  };
  
  this.phraseLength = function phraseLength() {
    for (var i = 0; i < original.length; i++){
      sorted[original[i]] = original[i].length;
        };
      //console.log(sorted)
      return sorted
      };

}

var sortGame = new LongSort(['dog','lamp','toast','cat', 'otomotopia']);
var countedList = sortGame.phraseLength();
console.log(sortGame.longest(countedList))