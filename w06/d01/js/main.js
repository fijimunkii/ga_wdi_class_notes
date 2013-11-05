// this prints to the console
console.log("hi this is some javascript");

// alert returns undefined
var input = alert("your computer is infected with a virus!");

var userName = prompt("Good morning what is your name?");

// returns a boolean
var bankTransfer = confirm(userName + " would you like me to transfer $100000 into my Nigerian Bank Account???");

if (bankTransfer) {
  var bankNumber = prompt("Please enter your bank account number");
}
else {
  alert('you really should');
}

if (userName != "harry" && bankTransfer && bankNumber) {
  console.log(userName + "'s bank account number is " + parseInt(bankNumber, 10));
};
