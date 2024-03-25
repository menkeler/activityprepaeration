import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Positioned(
            child: Image(
                image: NetworkImage(
                    'https://www.addu.edu.ph/wp-content/uploads/2020/08/UniversitySealWhite-1024x1020.png'))
                    
                    )
      ]),
    );
  }
}
