class Person {
  String name;
  int age;
  String gender;


  Person(this.name, this.age, this.gender);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, gender: $gender}';
  }
}
