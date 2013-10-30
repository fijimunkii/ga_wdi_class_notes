function makeTicker() {
  var i = 0;
  return function() {
    return i++;
  }
}
