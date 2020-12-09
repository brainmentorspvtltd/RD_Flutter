import 'package:flutter/material.dart';
import 'package:musicapp_rd/helpers/singerservice.dart';
import 'package:musicapp_rd/models/user.dart';
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
    singerService.getSingers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserDrawer(widget.user),
      appBar: AppBar(
        title: Text('Artist', style: TextStyle(fontSize: 22)),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.yellowAccent,
          Colors.greenAccent,
          Colors.purpleAccent
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}
