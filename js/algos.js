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


// //RELEASE 1

// var profile1 = {};
// function pair1(name, age){
//   profile1.name = name;
//   profile1.age = age;
//   return profile1
// };

// var profile2 = {};
// function pair2(name, age){
//   profile2.name = name;
//   profile2.age = age;
//   return profile2
// };


// console.log(pair1('Jake', 25));
// console.log(pair2('Brad', 22))
// //console.log(profile1.name)


// if (profile1.name == profile2.name) {
//   console.log('true');
//   return true;
// } else if (profile1.age == profile2.age) {
//   console.log('true');
//   return true;
// } else {
//   console.log('false');
//   return false;
// };

//RELEASE 1 SECOND ATTEMPT
//compare keys of each input hash
//if hashes have same keys compare the value
//if the values are the same, return true
//otherwise return false

function profileAdder(profile1, profile2) {
  for (var key in profile1){
    if(Object.keys(profile2).includes(key)){
        if(profile2[key] == profile1[key]){
          var match = true;

        } else {
          var match = true ;
        }
    } else {
      var match = false;
    };

  }
    console.log(match)
    return match
}

profileAdder({name: "Steven", age: 24}, {name: "Tamir", age: 54}) //true
profileAdder({nam: "Steven", ag: 24}, {name: "Tamir", age: 54}) //false (no e in name)




//RELEASE 3
function length(num){
  var alphabet = 'abcdefghijklmnopqrstuvwxyz';
  var wordArray = [];

  for (var i = 0; i < num; i++) {
    var wordString = '';
    for (var j = 0; j <= Math.floor(Math.random()*10); j++){
      wordString += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    wordArray.push(wordString);
  }
  return wordArray;
}

//console.log(length(6))

for (var i = 0; i < 10; i++){
  var lengthVar = length(7)
  var var1 = new LongSort(lengthVar);
  var var2 = var1.phraseLength();
  console.log(lengthVar)
  console.log(var1.longest(var2))
}










