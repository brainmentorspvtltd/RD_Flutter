import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  _eg() {
    Container(
      width: 100.0,
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: [Colors.cyan])),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String URL =
        "https://i.pinimg.com/originals/2e/96/b9/2e96b9fb6bda50d466def3cfba5cd789.png";
    Size deviceSize = MediaQuery.of(context).size;
    const pi = 3.14;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 100, top: 150),
          padding: EdgeInsets.only(left: 20, top: 30),
          height: deviceSize.height / 2,
          width: deviceSize.width / 2,
          transform: Matrix4.rotationZ(pi / 5),
          //color: Colors.orangeAccent,

          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            //image: DecorationImage(image: NetworkImage(URL)),
            //shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.cyan, blurRadius: 10),
              BoxShadow(color: Colors.purpleAccent)
            ],
            // borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Colors.black, width: 3, style: BorderStyle.solid),
            // gradient: RadialGradient(colors: [
            //   Colors.redAccent,
            //   Colors.greenAccent,
            //   Colors.yellowAccent,
            //   Colors.deepOrangeAccent,
            //   Colors.purpleAccent
            // ], stops: [
            //   0.0,
            //   0.20,
            //   0.50,
            //   0.75,
            //   1.0
            // ])
            //     gradient: SweepGradient(colors: [
            //   Colors.redAccent,
            //   Colors.greenAccent,
            //   Colors.yellowAccent,
            //   Colors.deepOrangeAccent,
            //   Colors.purpleAccent,
            // ], stops: const [
            //   0.0,
            //   0.2,
            //   0.5,
            //   0.75,
            //   1.0
            // ])
            /*gradient: LinearGradient(colors: [
              Colors.redAccent,
              Colors.greenAccent,
              Colors.yellowAccent,
              Colors.deepOrangeAccent,
              Colors.purpleAccent,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),

             */
          ),
          child: Text(
            '',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
