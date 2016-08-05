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


//RELEASE 1

var profile1 = {};
function pair1(name, age){
  profile1.name = name;
  profile1.age = age;
  return profile1
};

var profile2 = {};
function pair2(name, age){
  profile2.name = name;
  profile2.age = age;
  return profile2
};


console.log(pair1('Jake', 25));
console.log(pair2('Brad', 22))
//console.log(profile1.name)


if (profile1.name == profile2.name) {
  console.log('true');
  return true;
} else if (profile1.age == profile2.age) {
  console.log('true');
  return true;
} else {
  console.log('false');
  return false;
};












