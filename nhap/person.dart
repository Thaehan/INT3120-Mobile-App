class Person {
  String name;
  int age;
  bool isStudent;

  Person(this.name, this.age, this.isStudent);

  get getName => "Tên tôi là " + this.name;

  set(name) {
    this.name = name;
  }

  static void printf() {
    // ignore: avoid_print
    print("This is class Person's static function");
  }
}
