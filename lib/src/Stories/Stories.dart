import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Story.dart';

class Stories extends StatelessWidget {
  final List<String> imagePaths;
  final String mainImagePath;

  Stories({this.imagePaths, this.mainImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 550,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Story(
                        imagePath: this.mainImagePath,
                      )),
                  Container(
                    width: 410,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: this
                          .imagePaths
                          .map((e) => Story(
                        imagePath: e,
                      ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}