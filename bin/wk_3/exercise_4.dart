mixin Walker on Person {
  @override
  void walk() {
    print("$name is Walking");
  }
}

mixin Runner on Person {
  @override
  void run() {
    print("$name is Running");
  }
}

abstract class Person {
  Person(this.name);
  final String name;

  void walk();
  void run();
}

class Athelete extends Person with Walker, Runner {
  Athelete(super.name);
}

void main() {
  Athelete chokun = Athelete("Chokun");

  chokun.walk();
  chokun.run();
}
