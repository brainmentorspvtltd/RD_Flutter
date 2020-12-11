import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicapp_rd/models/user.dart';
import 'package:musicapp_rd/screens/artistdetails.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User user = new User();
  user.email = 'amit@yahoo.com';
  user.name = 'Amit';
  user.photo =
      'https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png';
  runApp(MaterialApp(
      title: 'Music App 2020',
      debugShowCheckedModeBanner: false,
      //home: MusicSplash()));
      home: ArtistDetails(user)));
}
