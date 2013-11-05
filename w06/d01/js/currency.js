var exchangeRate = {
  uk: 0.62,
  japan: 97.71,
  eu: 0.73
}

exchangeRate.amount = prompt("How much money?");
exchangeRate.location = prompt("Convert currency for what location?");

console.log(parseInt(amount,10) * exchangeRate.location);

// function convert(amount, location) {
//   return (amount * exchangeRate.location);
// }

// alert(convert(parseInt(amount, 10), location));
