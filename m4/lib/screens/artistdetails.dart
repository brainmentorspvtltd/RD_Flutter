import 'package:flutter/material.dart';
import 'package:musicapp_rd/helpers/singerservice.dart';
import 'package:musicapp_rd/models/singer.dart';
import 'package:musicapp_rd/models/user.dart';
import 'package:musicapp_rd/screens/songdetails.dart';
import 'package:musicapp_rd/widgets/userdrawer.dart';

class ArtistDetails extends StatefulWidget {
  User user;
  ArtistDetails(this.user);
  @override
  _ArtistDetailsState createState() => _ArtistDetailsState();
}

class _ArtistDetailsState extends State<ArtistDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SingerService singerService = SingerService();
    singerService.getSingers(getSingers);
  }

  List<Singer> singers = [];
  getSingers(List<Singer> singers) {
    this.singers = singers;
    setState(() {});

    return singers;
  }

  Widget _printSinger(Singer singer) {
    return GestureDetector(
      onTap: () {
        String singerName = singer.name;
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => SongDetails(singerName)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.red, blurRadius: 15)],
            border: Border.all(color: Colors.white, width: 4),
            shape: BoxShape.circle,
            image: DecorationImage(
                scale: 1,
                image: NetworkImage(singer.photo),
                fit: BoxFit.cover)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserDrawer(widget.user),
      appBar: AppBar(
        title: Text('Artist', style: TextStyle(fontSize: 22)),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.yellowAccent,
              Colors.greenAccent,
              Colors.purpleAccent
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          GridView.builder(
              itemCount: singers.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                Singer currentSinger = singers[index];
                return _printSinger(currentSinger);
              })
        ],
      ),
    );
  }
}
