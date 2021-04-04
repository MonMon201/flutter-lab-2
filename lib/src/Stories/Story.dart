import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Story extends StatelessWidget {
  final String imagePath;

  Story({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        width: 75,
        height: 75,
        image: AssetImage(this.imagePath),
      ),
    );
  }
}