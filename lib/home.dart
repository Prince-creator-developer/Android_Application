import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool showheart=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: showheart ? Colors.blue : Colors.red,
      body: Center(
        child:GestureDetector(
          onDoubleTap: (){
            showheart=!showheart;
            setState(() {
              
              
            });
          },
        
        child: showheart
            ? const Icon(Icons.favorite, color: Colors.red, size: 400)
            : const Icon(Icons.favorite_border, color: Colors.green, size: 300),
        ),
      ),
    );
  }
}