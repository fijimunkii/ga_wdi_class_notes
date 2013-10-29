var WDIBelt = {
  each: function(array, fn) {
    // debugger
    for (var index = 0; index < array.length; index++) {
      var el = array[index];
      fn(el);
    }
  },

  map: function(array, fn) {
    // debugger;
    var newArray = [];
    // some work here
    for (var index = 0; index < array.length; index++) {
      var el = array[index];
      var mappedEl = fn(el);
      newArray.push(mappedEl);
    }
    return newArray
  },

  map2: function(array, fn) {
    // 1 we can access variables outside of a declared function
    // 2 it actually goes into the function
    var newArray = [];

    this.each(array, function(el) {
      var mappedEl = fn(el);
      newArray.push(mappedEl);
    });

    return newArray
  }

}

// Everything above here is part of our toolbelt

var theNumbers = [1,2,3];
var names = ["Jonathan"]

function printOut(el) {
  console.log(el)
}

function goodMorning(name) {
  var string = "Good Morning " + name;
  console.log(string);
  return string;
}

function addOne(number) {
  var newNumber = number + 1;
  console.log(newNumber)
  return newNumber
}

// Create the function good morning



// WDIBelt.each(theNumbers, printOut);
// Similarly, use WDIBelt.each to say good morning to every person in the names array
// var newArray = WDIBelt.map(theNumbers, addOne);
// console.log(newArray)

// WDIBelt.each(theNumbers, addOne);

var newArray = WDIBelt.map2(theNumbers, addOne);
console.log(newArray)
