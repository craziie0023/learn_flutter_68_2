import 'package:flutter/material.dart';

enum Job {
  developer(
    title: "นักพัฒนา",
    description: "ทำงานเกี่ยวกับการพัฒนาแอปพลิเคชัน",
    image: "assets/images/juno.png",
    color: Colors.pinkAccent,
  ),
  designer(
    title: "นักออกแบบ",
    description: "ทำงานเกี่ยวกับการออกแบบอินเตอร์เฟซและประสบการณ์ผู้ใช้",
    image: "assets/images/juno.png",
    color: Colors.blueAccent,
  ),
  manager(
    title: "หัวหน้าแผนก",
    description: "บริหารจัดการทีมและโครงการ",
    image: "assets/images/juno.png",
    color: Colors.greenAccent,
  ),
  businessman(
    title: "ผู้ประกอบการ",
    description: "ดำเนินธุรกิจและสร้างรายได้",
    image: "assets/images/juno.png",
    color: Colors.orangeAccent,
  ),
  student(
    title: "นักเรียน",
    description: "ศึกษาในระดับชั้นเรียน",
    image: "assets/images/juno.png",
    color: Colors.purpleAccent,
  );

  final String title;
  final String description;
  final String image;
  final Color color;

  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });
}

class Person {
  String name;
  int age;
  Job job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: Job.developer),
  Person(name: "สมศรี", age: 25, job: Job.designer),
  Person(name: "สมปอง", age: 40, job: Job.manager),
  Person(name: "สมหมาย", age: 35, job: Job.businessman),
  Person(name: "สมจิตร", age: 28, job: Job.student),
];
