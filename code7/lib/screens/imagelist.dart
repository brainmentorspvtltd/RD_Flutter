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

    print("Init Call Ends");
  }

  String img;
  List<dynamic> listOfImages = [];
  giveMeData(String json) {
    //print("I Rec the JSON in ImageList Screen $json");
    Map<String, dynamic> map = convert.jsonDecode(json);
    setState(() {
      listOfImages = map['data'];
      img = map['data'][0]['images']['original']['url'];
    });
    print(
        "All the Data is Inside the Map ${map['data'][0]['images']['original']['url']}");
    //map['data'][0]
  }

  List<Widget> _createImages() {
    return listOfImages
        .map((dynamic currentImage) =>
            Image.network(currentImage['images']['original']['url']))
        .toList();
    // List<Widget> listOfWidgets = listOfImages
    //     .map((dynamic currentImage) =>
    //         Image.network(currentImage['images']['original']['url']))
    //     .toList();
    // return listOfWidgets;
  }

  TextEditingController _tc = TextEditingController();
  _searchBox() {
    return Expanded(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              //padding: EdgeInsets.all(10),
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 3)),
              child: Expanded(
                child: TextField(
                  controller: _tc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Type to Search',
                    // suffixIcon: Icon(
                    //   Icons.search,
                    //   size: 30,
                    //   color: Colors.black,
                    // ),
                  ),
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                String searchBoxValue = _tc.text;
                Server.getImages(giveMeData, searchBoxValue);
              },
              icon: Icon(Icons.search, size: 32, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  _myshowBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 32,
                    ),
                    Text('Email'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 32,
                    ),
                    Text('Phone'),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: Colors.redAccent,
        elevation: 5,
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.mic,
          size: 32,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        elevation: 5,
        color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 24,
                ),
                onPressed: () {
                  _myshowBottomSheet(context);
                }),
            IconButton(
                icon: Icon(
                  Icons.account_circle,
                  size: 24,
                ),
                onPressed: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Image Search'),
        //title: _searchBox(),
        bottom: PreferredSize(
          child: _searchBox(),
          preferredSize: Size.fromHeight(30),
        ),
        //title: Text('Image Search'),
        // bottom: PreferredSize(
        //   child: TextField(),
        // ),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: listOfImages.length == 0
              ? Text('No Image ')
              : Column(
                  children: _createImages(),
                ),
        ),
      ),
      // Single Image
      // body: Container(
      //   color: Colors.lightGreenAccent,
      //   child: img != null
      //       ? Image.network(img)
      //       : Center(
      //           child: Text(
      //           'No Image FOUND',
      //           style: TextStyle(fontSize: 32),
      //         )),
      // ),
    );
  }
}
