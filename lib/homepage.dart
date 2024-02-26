import 'package:activityprepaeration/responsive/desktop_layout.dart';
import 'package:activityprepaeration/responsive/mobile_layout.dart';
import 'package:activityprepaeration/responsive/responsive_layout.dart';
import 'package:activityprepaeration/responsive/tablet_layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: responsive_layout(desktopBody: myDesktopBody(), tabletBody: myTabletBody(), mobileBody: myMobileBody()),
    );
  }
}