import 'dart:convert' as convert;

import 'package:http/http.dart';
import 'package:musicapp_rd/models/singer.dart';
import 'package:musicapp_rd/utils/constants.dart';
import 'package:musicapp_rd/utils/server.dart';

class SingerService {
  getSingers() {
    List<Singer> singers = [];
    Future<Response> future = Server.callServer(Constants.SINGER_URL);
    future.then((Response response) {
      String json = response.body;
      print("JSON is $json");
      Map<String, dynamic> map = convert.jsonDecode(json);
      List<dynamic> listOfMap = map['singers'];
      print("List od Singers $listOfMap");
      singers = listOfMap.map((dynamic map) {
        Singer singer = new Singer(map['name'], map['photo']);
        print("Singer is $singer");
        return singer;
      }).toList();
      print("Singers are $singers");
    }).catchError((err) => print("Singer Service Error is $err"));
  }
}
