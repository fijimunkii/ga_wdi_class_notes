var secretNumber = 42;
var guesses = [];
var guess;

while (guess != secretNumber) {
  guess = parseInt(prompt("Can you guess the magic number?"),10);
  guesses.push(guess);
}

alert('congrats you got it!')
console.log(guesses)
