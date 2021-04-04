import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MenuPoint.dart';

class MyMenu extends StatelessWidget {
  final List<String> menuList;

  MyMenu({this.menuList});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: EdgeInsets.only(top: 100.0, bottom: 400.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: this
                  .menuList
                  .map((e) => MenuPoint(
                        text: e,
                      ))
                  .toList(),
            )));
  }
}