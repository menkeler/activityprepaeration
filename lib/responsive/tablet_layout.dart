import 'package:activityprepaeration/components/drawer.dart';
import 'package:flutter/material.dart';


class myTabletBody extends StatelessWidget {
  const myTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      backgroundColor: Colors.blue,
    );
  }
}