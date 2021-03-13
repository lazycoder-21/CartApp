import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileImgUrl = "https://picsum.photos/250?image=9";
    return Drawer(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Ankit",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                accountEmail: Text("lostankit7@gmail.com",
                    style: TextStyle(color: Colors.blue, fontSize: 16)),
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
