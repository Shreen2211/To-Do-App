import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navgation {
  static void push(context, Widget Newscreen) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Newscreen,)
        );
  }
}