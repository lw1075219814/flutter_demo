import 'dart:math';

abstract class Shape {
  int number = 0;

  num get area;
}

class Circle extends Shape {
  num radius;

  Circle(this.radius);

  num get area => pi * pow(radius, 2);
}

class Circle1 implements Shape {
  @override
  num get area => pi * pow(1, 5);

  @override
  int number = 10;
}

class Square extends Shape {
  num side;

  Square(this.side);

  num get area => pi * pow(side, 2);
}

class ShapeFactory {
  ShapeFactory();

  Shape getShape(String tag) {
    if (tag == 'circle') return Circle(20);
    if (tag == 'square') return Square(20);
    throw 'can\'t create $tag';
  }
}

void main() {
  var circle = Circle(20);
  var square = Square(20);
  print(circle);
  print(square);

  ShapeFactory shapeFactory = ShapeFactory();
  shapeFactory.getShape('square');

  var numbers = {1, 2, 3};
  numbers.where((number) => number > 1).forEach(print);

  var a = const [];
  a = [1,true,'3'];

  a.forEach(print);
}
