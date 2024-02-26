import 'package:activityprepaeration/components/drawer.dart';
import 'package:activityprepaeration/homepage.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer:AppDrawer(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Main Menu'))
          ],
      ),
    );
  }
}
