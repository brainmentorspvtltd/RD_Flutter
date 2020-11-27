import 'package:firstlearnapp/screens/three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App 2020',
    //theme: ThemeData.dark(),
    //theme: ThemeData.light(),
    theme: ThemeData(
        primaryColor: Colors.greenAccent,
        appBarTheme: AppBarTheme(
            color: Colors.limeAccent, elevation: 5, shadowColor: Colors.black)),
    home: Three(),
  ));
}
