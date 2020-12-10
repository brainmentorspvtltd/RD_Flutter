import 'package:flutter/material.dart';
import 'package:musicapp_rd/models/song.dart';

class Player extends StatefulWidget {
  Song song;
  Player(this.song);
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: deviceSize.height / 2,
              width: deviceSize.width,
              color: Colors.blueGrey,
              child: Center(
                child: CircleAvatar(
                  maxRadius: 100,
                  backgroundImage: NetworkImage(widget.song.albumPhoto),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
