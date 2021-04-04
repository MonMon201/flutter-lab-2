import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Panel.dart';

class Post extends StatelessWidget {
  final String imagePath;
  final int blockSize;

  Post({this.imagePath, this.blockSize});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.blockSize.toDouble(),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(children: [
          Expanded(
              child: Image(
                image: AssetImage(this.imagePath),
              )),
          Panel(),
        ]));
  }
}