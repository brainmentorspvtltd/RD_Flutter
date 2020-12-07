import 'package:flutter/material.dart';
import 'package:musicapp_rd/utils/constants.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("I Click");
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
              Constants.GOOGLE_LOGO,
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Login',
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
