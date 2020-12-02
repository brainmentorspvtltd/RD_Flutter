import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int _myValue;
  _incrementTheValue() {
    _myValue++;
    setState(() {});
    print("Increment the Value function called.... $_myValue");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myValue = 0;
    print("I am Init State $_myValue");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _myValue = -1;
    print("Connection Close Here");
  }

  @override
  Widget build(BuildContext context) {
    print(" i am A build");
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: [
          Text(
            'Value is $_myValue',
            style: TextStyle(fontSize: 32),
          ),
          RaisedButton(
            elevation: 5,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            color: Colors.blue,
            onPressed: _incrementTheValue,
            child: Text(
              'Click Me',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
