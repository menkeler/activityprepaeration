import 'package:flutter/material.dart';

class myMobileBody extends StatelessWidget {
  const myMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 140,
            decoration: BoxDecoration(color: Colors.amber
            ,border:Border.all(color: Colors.black)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "adsas",border: 
                      OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0), // Correct syntax
                      borderSide: BorderSide(color: Colors.black)
                    )),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
