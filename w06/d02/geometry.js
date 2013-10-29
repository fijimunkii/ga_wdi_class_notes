function Rectangle(length, width) {
  var x = length,
      y = width;
};

var rectangle = new Rectangle(4, 4);

Rectangle.prototype.isSquare = function() {
  return (this.x === this.y);
};

Rectangle.prototype.area = function() {
  return (this.x * this.y);
};

Rectangle.prototype.perimeter = function() {
  return ((this.x * 2) + (this.y * 2));
};

function Triangle(sideA, sideB, sideC) {
  var sideA = sideA,
      sideB = sideB,
      sideC = sideC;
};

var triangle = new Triangle(3, 4, 4);

Triangle.prototype.isEquilateral = function() {
  return ((this.sideA == this.sideB) && (this.sideB == this.sideC));
};

Triangle.prototype.isIsosceles = function() {
  return ((this.sideA == this.sideB) || (this.sideA == this.sideC) || (this.sideB == this.sideC));
};

Triangle.prototype.calcArea = function() {
  var a = this.sideA;
  var b = this.sideB;
  var c = this.sideC;
  var perimeter = a + b + c;
  var p = perimeter / 2;
  return (Math.sqrt(p*(p - a)*(p - b)*(p - c)));
};

Triangle.prototype.simpleTriangle = function() {
  var a = this.sideA;
  var b = this.sideB;
  var c = this.sideC;
  return [a, b, c].sort();
};

Triangle.prototype.isObtuse = function() {
  var a = this.simpleTriangle[0];
  var b = this.simpleTriangle[1];
  var c = this.simpleTriangle[2];
  return ((a*a + b*b) < (c*c));
}

rectangle.isSquare();
rectangle.area();
rectangle.perimeter();
triangle.isEquilateral();
triangle.isIsosceles();
triangle.calcArea();
triangle.isObtuse();
