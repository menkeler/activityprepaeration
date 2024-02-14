import 'package:activityprepaeration/responsive/desktop_body.dart';
import 'package:activityprepaeration/responsive/mobile_body.dart';
import 'package:activityprepaeration/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(desktopBody: myDesktopBody(), mobileBody: myMobileBody()),
    );
  }
}