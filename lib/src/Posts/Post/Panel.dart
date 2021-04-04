import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Panel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.share,
            size: 25,
          ),
          Icon(
            Icons.add_comment,
            size: 25,
          ),
          Icon(
            Icons.thumb_up,
            size: 25,
          ),
        ],
      ),
    );
  }
}
