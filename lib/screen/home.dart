import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.pinkAccent),
            onPressed: () {
              print("กดปุ่มแล้ว TextButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          FilledButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: () {
              print("กดปุ่มแล้ว TextButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            style: TextButton.styleFrom(
              side: BorderSide(color: Colors.pinkAccent, width: 2),
              foregroundColor: Colors.blueAccent,
            ),
            onPressed: () {
              print("กดปุ่มแล้ว TextButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("กดปุ่มแล้ว TextButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
