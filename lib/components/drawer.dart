import 'package:activityprepaeration/homepage.dart';
import 'package:activityprepaeration/mainmenu.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
           padding: EdgeInsets.zero,
          children: [DrawerHeader(child: Text("Drawer Header")),
           ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context,'/home');
              },
            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text('MainMenu'),
              onTap: () {
                Navigator.pushNamed(context,'/main');
              },
            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Update UI based on item selected
              },
            ),
          ],
        ),
      );
  }
}
