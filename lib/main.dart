import "package:flutter/material.dart";
import "diceScreen.dart";
void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dicescreen(),
    );
  }
}