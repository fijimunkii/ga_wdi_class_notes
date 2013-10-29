function Person(){

};

var p1 = new Person();

Person.prototype.sayHello = function(){
  statement = 'Hello World';
  console.log(statement);
  return statement;
}

Person.prototype.sayGoodBye = function(){
  statement = 'Good Bye Cruel World';
  console.log(statement);
  return statement;
}
