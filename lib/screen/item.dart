import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/model/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<Person> data = people;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pinkAccent),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ชื่อ: ${data[index].name}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "อายุ: ${data[index].age} ปี",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "อาชีพ: ${data[index].job}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Icon(Icons.person, size: 50, color: Colors.pinkAccent),
            ],
          ),
        );
      },
    );
  }
}
