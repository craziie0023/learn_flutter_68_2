class Person {
  String name;
  int age;
  String job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: "นักเรียน"),
  Person(name: "สมศรี", age: 25, job: "นักศึกษา"),
  Person(name: "สมปอง", age: 40, job: "พนักงานบริษัท"),
  Person(name: "สมหมาย", age: 35, job: "ครู"),
  Person(name: "สมจิตร", age: 28, job: "แพทย์"),
];