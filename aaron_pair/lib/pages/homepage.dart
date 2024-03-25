import 'package:aaron_pair/component/appDrawer.dart';
import 'package:aaron_pair/component/displayCard.dart';
import 'package:aaron_pair/models/itemModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<itemData> itemList = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      var url = Uri.https('jsonplaceholder.typicode.com', '/photos');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        List<itemData> items = jsonList.take(10).map((e) => itemData.fromJson(e)).toList();
          
        setState(() {
          itemList = items;
        });
       
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      ),
      endDrawer: appDrawer(),
      body: SingleChildScrollView(
        child: Wrap(
          children: itemList.map((oneProduct) {
            return displayCard(title: oneProduct.title,url: oneProduct.url);
          }).toList(),
        ),
      ),
    );
  }



}
