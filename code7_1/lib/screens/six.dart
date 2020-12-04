import 'package:flutter/material.dart';

class Six extends StatelessWidget {
  _getContainer(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _getContainer(
                deviceSize.width / 2, deviceSize.height / 2, Colors.redAccent),
            _getContainer(deviceSize.width / 3, deviceSize.height / 3,
                Colors.lightGreenAccent),
            _getContainer(
                deviceSize.width / 4, deviceSize.height / 4, Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}
