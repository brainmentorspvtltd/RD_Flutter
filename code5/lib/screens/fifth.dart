import 'package:flutter/material.dart';

class Fifth extends StatelessWidget {
  _getContainer(Color myColor, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        color: myColor,
        //width: 100,
        height: 100,
      ),
    );
  }

  _getText(String txt, double size) {
    return Text(txt, style: TextStyle(fontSize: size));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            //textBaseline: TextBaseline.ideographic,
            children: [
              // Column(
              //   children: [
              //     Container(), Container()
              //   ],
              // ), Column(), Column(),
              //_getText('Hello', 48),
              //_getText('你好', 30)
              _getContainer(Colors.redAccent, 1),
              _getContainer(Colors.yellowAccent, 2),
              _getContainer(Colors.green, 3)
            ],
          ),
        ),
      ),
    );
  }
}
