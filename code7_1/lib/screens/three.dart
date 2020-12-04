import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    final String URL =
        "https://i.pinimg.com/originals/2e/96/b9/2e96b9fb6bda50d466def3cfba5cd789.png";
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: deviceSize.width,
        height: deviceSize.height / 3,
        child: Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/dp.png'),
            // backgroundImage: NetworkImage(URL),
            radius: 100,
          ),
        ),
        color: Colors.orangeAccent,
      ),
    ));
  }
}
