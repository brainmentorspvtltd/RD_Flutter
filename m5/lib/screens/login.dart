import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:musicapp_rd/helpers/gmailauth.dart';
import 'package:musicapp_rd/models/user.dart';
import 'package:musicapp_rd/screens/artistdetails.dart';
import 'package:musicapp_rd/utils/constants.dart';
import 'package:musicapp_rd/widgets/custombutton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  isAuthenticate(Future<auth.User> future) {
    future.then((auth.User fireBaseUser) {
      print(fireBaseUser.email);
      print(fireBaseUser.photoURL);
      print(fireBaseUser.displayName);
      User userObject = new User();
      userObject.email = fireBaseUser.email;
      userObject.photo = fireBaseUser.photoURL;
      userObject.name = fireBaseUser.displayName;
      Navigator.push(context,
          MaterialPageRoute(builder: (ct) => ArtistDetails(userObject)));
    }).catchError((err) => print("Error in Login with Gmail $err"));
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.black,
            ),
            Positioned(
                child: Image.network(Constants.LEFT_BORDER_IMG),
                left: 0,
                top: 0),
            Positioned(
                child: Image.network(
                  Constants.RIGHT_BORDER_IMG,
                  width: deviceSize.width * 0.40,
                  height: deviceSize.height * 0.40,
                ),
                right: 0,
                bottom: 0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(GmailAuth.login, 'Login', Constants.GOOGLE_LOGO,
                    isAuthenticate)
                // MaterialButton(
                //   minWidth: deviceSize.width / 2,
                //   elevation: 5,
                //   color: Colors.yellowAccent,
                //   splashColor: Colors.purpleAccent,
                //   onPressed: () {},
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(
                //         Icons.login,
                //         size: 32,
                //       ),
                //       Text('Login')
                //     ],
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
