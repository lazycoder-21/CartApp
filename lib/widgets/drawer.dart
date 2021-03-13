import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileImgUrl = "https://picsum.photos/250?image=9";
    return Drawer(
      child: Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ankit"),
                accountEmail: Text("lostankit7"),
                // currentAccountPicture: Image.network('https://picsum.photos/250?image=9'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profileImgUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
            )
          ],
        ),
      ),
    );
  }
}
