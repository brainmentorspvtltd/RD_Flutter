import 'package:flutter/material.dart';

class Seven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    const URL =
        "https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg";
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              //color: Colors.blueAccent,
              child: Image.network(
                URL,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              width: deviceSize.width,
              bottom: deviceSize.height / 6,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'TOM',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Icon(
                    Icons.message,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(Icons.thumb_up, size: 30, color: Colors.yellowAccent)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
