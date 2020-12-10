import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:musicapp_rd/models/song.dart';
import 'package:musicapp_rd/screens/player.dart';
import 'package:musicapp_rd/utils/constants.dart';
import 'package:musicapp_rd/utils/server.dart';

class SongDetails extends StatefulWidget {
  String singerName;
  SongDetails(this.singerName);
  @override
  _SongDetailsState createState() => _SongDetailsState();
}

class _SongDetailsState extends State<SongDetails> {
  Future<List<Song>> _callSongs() async {
    String URL =
        Constants.SONGS_BASE_URL + "term=" + widget.singerName + "&limit=20";
    Response response = await Server.callServer(URL);
    String json = response.body;
    Map<String, dynamic> map = convert.jsonDecode(json);
    print("SONG JSON is $json");
    List<dynamic> listOfSongs = map['results'];
    List<Song> songs = listOfSongs.map((dynamic song) {
      Song songObject = Song();
      songObject.artist = song['artistName'];
      songObject.audioURL = song['previewUrl'];
      songObject.title = song['trackName'];
      songObject.albumPhoto = song['artworkUrl100'];
      return songObject;
    }).toList();
    print("SONGS LIST IS $songs");
    return songs;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('Songs'),
      ),
      body: FutureBuilder(
        future: _callSongs(),
        builder: (BuildContext ctx, AsyncSnapshot snapShot) {
          if (!snapShot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapShot.hasError) {
            return Center(
              child: Text('Some Error in Server Call'),
            );
          }
          return ListView.builder(
            itemBuilder: (BuildContext ct, int index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellowAccent, width: 5),
                    boxShadow: [
                      BoxShadow(color: Colors.red, blurRadius: 10),
                      BoxShadow(color: Colors.green, blurRadius: 10)
                    ]),
                child: Card(
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => Player(snapShot.data[index])));
                    },
                    leading: Image.network(
                      snapShot.data[index].albumPhoto,
                    ),
                    title: Text(
                        snapShot.data[index].title.toString().substring(0, 10) +
                            "..."),
                    subtitle: Text(snapShot.data[index].artist),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.play_circle_fill,
                        color: Colors.blue,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: snapShot.data.length,
          );
        },
      ),
    );
  }
}
