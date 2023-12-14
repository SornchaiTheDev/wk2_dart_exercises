class Person {
  final String _name;
  final int _age;
  final double _height;

  Person(this._name, this._age, this._height);

  void printDescription() {
    print("My name is $_name. I'm $_age years old, I'm $_height meters tall.");
  }
}

void main() {
  Person chokun = Person("Chokun", 20, 174.0);
  chokun.printDescription();
  Person nut = Person("Nut", 19, 160);
  nut.printDescription();
}
