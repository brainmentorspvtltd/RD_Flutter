import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:musicapp_rd/helpers/audioplay.dart';
import 'package:musicapp_rd/helpers/dboperations.dart';
import 'package:musicapp_rd/models/song.dart';
import 'package:musicapp_rd/utils/constants.dart';

class Player extends StatefulWidget {
  Song song;
  Player(this.song);
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isPlaying = false;
  Duration total;
  Duration current;
  updateSlider({Duration total, Duration current}) {
    this.total = total;
    this.current = current;
    setState(() {});
  }

  addToPlayList() async {
    String docId = await DbOperations.add(widget.song);
    if (docId != null) {
      Fluttertoast.showToast(
          msg: 'Song Added in the PlayList',
          fontSize: 30,
          backgroundColor: Colors.redAccent);
    } else {
      Fluttertoast.showToast(
          msg: 'Song NOT Added in the PlayList',
          fontSize: 30,
          backgroundColor: Colors.redAccent);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AudioPlay.loadPlayerConfig(updateSlider);
  }

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
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.song.title,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                widget.song.artist,
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
                value: total != null &&
                        current != null &&
                        current.inMilliseconds > 0 &&
                        current.inMilliseconds < total.inMilliseconds
                    ? current.inMilliseconds / total.inMilliseconds
                    : 0.0,
                onChanged: (val) {
                  final position = val * total.inMilliseconds;

                  AudioPlay.seek(Duration(milliseconds: position.round()));
                  setState(() {});
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.volume_off,
                      size: 30,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      !isPlaying ? Icons.play_arrow : Icons.pause,
                      size: 30,
                    ),
                    onPressed: () async {
                      if (!isPlaying) {
                        int result = await AudioPlay.play(widget.song.audioURL);
                        if (result == Constants.SUCCESS) {
                          isPlaying = true;
                          setState(() {});
                          print("SUCCESS ");
                        } else {
                          print("FAIL ");
                        }
                      } else {
                        int result = await AudioPlay.pause();
                        if (result == Constants.SUCCESS) {
                          isPlaying = false;
                          setState(() {});
                          print("SUCCESS ");
                        } else {
                          print("FAIL ");
                        }
                      }
                    }),
                IconButton(
                    icon: Icon(
                      Icons.stop,
                      size: 30,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.volume_up,
                      size: 30,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                addToPlayList();
              },
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.yellowAccent,
            )
          ],
        ),
      ),
    );
  }
}
