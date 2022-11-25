import 'package:flutter/material.dart';
import 'package:number/two.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(1),
                child: Row(
                  children: [
                    box(Colors.orange, 1),
                    box(Colors.lightBlue, 2),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    box(Colors.red, 3),
                    box(Colors.green, 4),
                    box(Colors.purpleAccent, 5),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          box(Colors.blueAccent, 6),
                          box(Colors.orange, 7),
                        ],
                      ),
                    ),
                    box(Colors.yellow, 8),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          box(Colors.blueAccent, 9),
                          box(Colors.orange, 10),
                        ],
                      ),
                    ),
                    box(Colors.green, 11),
                    Expanded(
                      child: Column(
                        children: [
                          box(Colors.deepPurple,12),
                          box(Colors.orange, 13),
                          box(Colors.grey, 14),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    box(Colors.indigoAccent, 15),
                    Expanded(
                      child: Column(
                        children: [
                          box(Colors.red, 16),
                          box(Colors.blueGrey, 17),
                          box(Colors.amber, 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  box(Color c, int i) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return two(c,i);
          },));
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(2),
          color: c,
          child: Text(
            "${i}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
