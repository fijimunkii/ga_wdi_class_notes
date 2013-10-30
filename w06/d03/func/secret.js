function secret(password, message) {
  var password = password,
      message = message;
  function unlock(pass) {
    if (password === pass) {
      return message;
    } else {
      return 'better luck next time';
    }
  }
  return unlock;
}
