import 'dart:convert' as convert;

import 'package:apicalling/utils/server.dart';
import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Init Call");
    Server.getImages(giveMeData);
    print("Init Call Ends");
  }

  String img;
  giveMeData(String json) {
    //print("I Rec the JSON in ImageList Screen $json");
    Map<String, dynamic> map = convert.jsonDecode(json);
    setState(() {
      img = map['data'][0]['images']['original']['url'];
    });
    print(
        "All the Data is Inside the Map ${map['data'][0]['images']['original']['url']}");
    //map['data'][0]
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Search'),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: img != null ? Image.network(img) : Text('No Image FOUND'),
      ),
    );
  }
}
