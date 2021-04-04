import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuPoint extends StatelessWidget {
  final String text;

  MenuPoint({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 250,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 3.0))),
      child: Center(
          child: Text(
        this.text,
        style: TextStyle(color: Colors.white, fontSize: 24.0),
      )),
    );
  }
}