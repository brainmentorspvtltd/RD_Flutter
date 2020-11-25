import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

_getTextStyle() {
  return TextStyle(fontSize: 112);
}

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
    home: Scaffold(
      backgroundColor: Colors.orangeAccent,
      drawer: Drawer(),
      //bottomNavigationBar: BottomNavigationBar(),
      appBar: AppBar(
        // leading: Icon(
        //   Icons.menu,
        //   size: 20,
        // ),
        actions: [
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          'MyApp',
          style: TextStyle(color: Colors.red.shade300),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text(
                'Hello Flutter',
                style: _getTextStyle(),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
              child: Text('Hello Flutter', style: _getTextStyle()),
            )
          ],
        ),
      ),
      // body: Container(
      //   color: Colors.cyan,
      //   child: Text(
      //     'Hello Flutter App',
      //     style: TextStyle(fontSize: 32),
      //   ),
      // ),
      // body: Center(
      //   // child: Banner(
      //   //
      //   //   child: Text(
      //   //     'Hello Flutter App',
      //   //     style: TextStyle(fontSize: 20),
      //   //   ),
      //   // ),
      //   child: Text(
      //     'Hello Flutter',
      //     style: TextStyle(fontSize: 32),
      //   ),
      // ),
    ),
  ));
}
