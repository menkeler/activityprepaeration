import 'package:activityprepaeration/components/drawer.dart';
import 'package:activityprepaeration/components/itemCard.dart';
import 'package:activityprepaeration/mainmenu.dart';
import 'package:flutter/material.dart';


class myDesktopBody extends StatelessWidget {
  const myDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      drawer: AppDrawer(),
      backgroundColor: Colors.amber,
      body: Column(
        children: [
         
        ],
      ),
    );
  }
}