import 'package:flutter/material.dart';

class displayCard extends StatelessWidget {
  final String title,url;
  const displayCard({super.key,required, required this.title,required this.url}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 100,
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    url),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(title),
                     Flexible (child: SingleChildScrollView(child: 
                     Text('dsdadasd dasd sd ad aslroe asdasd aslroe asdad ')),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
