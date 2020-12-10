import 'package:flutter/material.dart';
import 'package:musicapp_rd/models/user.dart';

class UserDrawer extends StatelessWidget {
  User user;
  UserDrawer(this.user);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              currentAccountPicture: Image.network(user.photo),
              accountName: Text(
                user.name,
                style: TextStyle(fontSize: 22),
              ),
              accountEmail: Text(user.email))
        ],
      ),
    );
  }
}
