import "dart:math";

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print(
        "The Area of This shape is ${area.toStringAsFixed(2)} and Perimeter is ${perimeter.toStringAsFixed(2)}");
  }
}

class Square extends Shape {
  Square(this.side);

  final double side;

  @override
  double get area {
    return side * side;
  }

  @override
  double get perimeter {
    return 4 * side;
  }
}

class Circle extends Shape {
  Circle(this.radius);

  final double radius;

  @override
  double get area {
    return pi * radius * radius;
  }

  @override
  double get perimeter {
    return 2 * pi * radius;
  }
}

void main() {
  List<Shape> shapes = [
    Square(4),
    Circle(7),
    Square(10),
    Square(5),
    Circle(2.34),
    Circle(7.25),
  ];

  for (Shape shape in shapes) {
    shape.printValues();
  }
}
