import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MyMenu/MyMenu.dart';

class MyDrawer extends Drawer {
  final List<String> menuList;

  MyDrawer({this.menuList});
  @override
  Widget build(BuildContext context) {
    return (Drawer(
        child: MyMenu(
            menuList: this.menuList)));
  }
}