import 'package:flutter/material.dart';

// ignore: camel_case_types
class responsive_layout extends StatelessWidget {

  final Widget desktopBody;
  final Widget tabletBody;
  final Widget mobileBody;
  
  const responsive_layout({super.key, required this.desktopBody, required this.tabletBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){

      if(constraints.maxWidth > 1100){
        return desktopBody;
      }else if(constraints.maxWidth > 600){
       return tabletBody;
      }
      else{
        return mobileBody;
      }
    });
  }
}