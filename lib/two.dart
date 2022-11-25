import 'package:flutter/material.dart';

class two extends StatefulWidget {
  Color c;
  int i;
  two(this.c,this.i);

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number"),
      ),
      body: Container(
        height: 400,
        width: 400,
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.c,
        ),
        child: Text("${widget.i}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30)),
      ),
    );
  }
}
