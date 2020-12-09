import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function _fn;
  String _label;
  String _image;
  Function _callBack;
  CustomButton(this._fn, this._label, this._image, this._callBack);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print("I Click");
        Future<auth.User> future = _fn();
        _callBack(future);
      },
      splashColor: Colors.green,
      autofocus: true,
      highlightColor: Colors.purpleAccent,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              _image,
              //Constants.GOOGLE_LOGO,
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              _label,
              style: TextStyle(fontSize: 22, color: Colors.red),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.purpleAccent, width: 2),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
