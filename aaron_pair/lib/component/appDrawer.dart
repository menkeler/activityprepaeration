import 'package:flutter/material.dart';

class appDrawer extends StatelessWidget {
  const appDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
   
      child: ListView(
        children: [
           ListTile(
            onTap: () {
              
                Navigator.pushReplacementNamed(context, '/login');
     
            },
            title: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}