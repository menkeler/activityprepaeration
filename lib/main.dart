import 'package:activityprepaeration/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Andrew Tan"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              appCard1(context),
          appCard2(context),
          appCard3(context),
        
            ],
          
          ),
             Row(
            children: [
              appCard4(context),
          appCard5(context),
       
        
            ],
          
          )

        ],
      ),
    );
  }
}

Widget appCard1(context) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Flexible(
            child: Text("Keyboard"),
          ),
          const Flexible(
            child: Text("Php 200"),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Cart")),
                ElevatedButton(onPressed: () {}, child: const Text("Buy")),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget appCard2(context) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.08,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
              title: Text("Who Are You",
                  textAlign: TextAlign.center, style: cardTextStyle)),
          SizedBox(
            height: 50,
          ),
          Text(
            "Feb 7 2024",
            textAlign: TextAlign.right,
          ),
          Text(
            "7:40am",
            textAlign: TextAlign.right,
          ),
        ],
      ),
    ),
  );
}

Widget appCard3(context) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.18,
      height: MediaQuery.of(context).size.height * 0.19,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Column(
                  children: [
                    Text("Andrew Mari L. Tan"),
                    Text("Davao City"),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Posts"),
                        Text("99"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Followers"),
                        Text("8"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget appCard4(BuildContext context) {
  return Container(
    height: 300,
    child: Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Yellow container
          Column(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          // Red circle
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1 -
                75, // Adjust position to center vertically
            left: (MediaQuery.of(context).size.width * 0.12 - 100) / 2,
            child: Container(
              height: 150,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
          // Text under the red circle
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1 +
                55, // Adjust position to place text under the red circle
            left: 0,
            right: 0,
            child: const Column(
              children: [
                Center(child: Text("Hello")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Text("posts"), Text("99")],
                    ),
                    Column(
                      children: [Text("posts"), Text("99")],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget appCard5(context) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                left: 8, top: 30), // Adjust the left padding as needed
            child: Row(
              children: [
                Icon(Icons.close_rounded),
                Text("Andrew Mari L. Tan"),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Hello world!"),
          const Padding(
            padding:
                EdgeInsets.only(left: 16), // Adjust the left padding as needed
            child: Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
