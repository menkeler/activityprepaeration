import 'package:flutter/material.dart';


class itemCard extends StatelessWidget {
  final String name;

  const itemCard({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.teal
      ),
      child: Column(
        children: [
          Expanded(
           
            child: Text(name),
          ),
         Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),Expanded(
           
            child: Text(name),
          ),
        ],
      ),
    );
  }
}