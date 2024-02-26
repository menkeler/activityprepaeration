import 'package:activityprepaeration/components/drawer.dart';
import 'package:flutter/material.dart';


class myMobileBody extends StatelessWidget {
  const myMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),
drawer: AppDrawer(),
      backgroundColor: Colors.red,
    );
  }
}