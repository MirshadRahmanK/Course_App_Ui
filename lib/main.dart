import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/Screens/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromRGBO(245, 106, 77, 1),
      accentColor: Color.fromRGBO(245, 106, 77, 1),
    ),
    home: HomePage(),
  ));
}
