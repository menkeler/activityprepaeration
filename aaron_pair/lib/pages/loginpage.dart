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
      body: Stack (
        children: [
          
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://samahan.addu.edu.ph/_next/static/media/tasteOfAddu.136801ca.png'),fit: BoxFit.cover)
          ),
        ),
        Positioned(
          top: 160,
          left: 100,
            child: Container(
          width: 150,
          height: 150,
          child: Image(
              image: NetworkImage(
                  'https://www.addu.edu.ph/wp-content/uploads/2020/08/UniversitySealWhite-1024x1020.png')),
        )),Positioned(
          top: 400,
          left: 35,
          child: 
        
        InkWell(
          onTap: () => ( Navigator.pushNamed(context, '/home')),
          child:Container(
    height: 50,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8), // Optional: Add border radius
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 30, // Optional: Add font size
              fontWeight: FontWeight.bold, // Optional: Add font weight
            ),
          ),
        ),
        SizedBox(width: 10),
        Image.network(
          'https://banner2.cleanpng.com/20180423/gkw/kisspng-google-logo-logo-logo-5ade7dc753b015.9317679115245306313428.jpg',
          height: 30,
          width: 30,
        ),
      ],
    ),
  ),
        ))
      ]),
    );
  }
}
