import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicapp_rd/utils/constants.dart';

import 'login.dart';

class MusicSplash extends StatefulWidget {
  @override
  _MusicSplashState createState() => _MusicSplashState();
}

class _MusicSplashState extends State<MusicSplash> {
  _nextScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => Login()));
  }

  _moveToNextScreen() {
    Future.delayed(Duration(seconds: 7), () {
      _nextScreen();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double gap = deviceSize.height * 0.03;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceSize.width,
          height: deviceSize.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.green,
                  Colors.yellowAccent,
                  Colors.redAccent,
                  Colors.blue
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    Constants.SPLASH_IMG_URL,
                    fit: BoxFit.cover,
                    height: deviceSize.height * 0.50,
                    width: deviceSize.width,
                  ),
                  SizedBox(
                    height: gap,
                  ),
                  Text(
                    'Music App 2020',
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: gap,
                  ),
                  Text(
                    'All Right Reserved @Brain Mentors',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: gap,
                  ),
                  MaterialButton(
                    animationDuration: Duration(seconds: 4),
                    padding: EdgeInsets.all(20),
                    elevation: 5,
                    splashColor: Colors.yellowAccent,
                    color: Colors.purpleAccent,
                    onPressed: () {
                      _nextScreen();
                    },
                    child: Text(
                      'Go Further',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
