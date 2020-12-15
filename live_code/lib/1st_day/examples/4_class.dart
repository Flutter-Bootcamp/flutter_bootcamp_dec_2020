class Person {
  String name;
  String hairColor;

  Person(this.name, {this.hairColor});

  void hello() {
    print('Hi, I am $name');
  }

  void run() {
    print('Run');
  }

  // Named constructor
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.hairColor = map['hairColor'];
  }
}

void main() {
  final enad = Person('enad', hairColor: 'brown');
  enad.hello(); // Hi, I am enad
  print(enad.hairColor); // black
}
