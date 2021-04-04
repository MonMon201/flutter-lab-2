import 'Post/Post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Posts extends StatelessWidget {
  final List<String> imagePaths;
  final int blockSize;

  Posts({this.imagePaths, this.blockSize});

  @override
  Widget build(BuildContext context) {
    int sizeOfPictureBlock = this.blockSize - 10;
    return Container(
      height: (this.imagePaths.length * this.blockSize).toDouble(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: this
            .imagePaths
            .map((e) => Post(
          imagePath: e,
          blockSize: sizeOfPictureBlock,
        ))
            .toList(),
      ),
    );
  }
}