import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_68_2/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<Person> data = people;

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: data.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       padding: const EdgeInsets.all(40),
    //       decoration: BoxDecoration(
    //         color: people[index].job.color,
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "ชื่อ: ${data[index].name}",
    //                 style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold),
    //               ),
    //               Text(
    //                 "อายุ: ${data[index].age} ปี",
    //                 style: GoogleFonts.kanit(fontSize: 16),
    //               ),
    //               Text(
    //                 "อาชีพ: ${data[index].job.title}",
    //                 style: GoogleFonts.kanit(fontSize: 16),
    //               ),
    //             ],
    //           ),
    //           Image.asset(
    //             data[index].job.image,
    //             width: 80,
    //             height: 80,
    //             fit: BoxFit.cover,
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: people[index].job.color,
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
                          style: GoogleFonts.kanit(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "อายุ: ${data[index].age} ปี",
                          style: GoogleFonts.kanit(fontSize: 16),
                        ),
                        Text(
                          "อาชีพ: ${data[index].job.title}",
                          style: GoogleFonts.kanit(fontSize: 16),
                        ),
                      ],
                    ),
                    Image.asset(
                      data[index].job.image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            height: 50,
            width: 100,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.pinkAccent),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddForm();
                    },
                  ),
                ).then((_) => setState(() {}));
              },
              icon: Icon(Icons.add, size: 30, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
