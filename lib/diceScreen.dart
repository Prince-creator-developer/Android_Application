import 'package:flutter/material.dart';
import 'dart:math';

class Dicescreen extends StatefulWidget {
  const Dicescreen({super.key});

  @override
  State<Dicescreen> createState() => _DicescreenState();
}

class _DicescreenState extends State<Dicescreen> {
  int leftdice=1;
  int rightdice=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,

        appBar: AppBar(
          centerTitle: true,
          title: Text("Dice App",selectionColor: Colors.red,style: TextStyle(color: Colors.red)),
          backgroundColor: Colors.black,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
               children:[
                Expanded(child:Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset("images/dice$leftdice.png"),
                ),
                ),
                Expanded(
                  child:Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset("images/dice$rightdice.png"),
                  ),
                ),
               ],
               ),
                ElevatedButton(child:Text("Roll the dice"),onPressed: (){
                 leftdice=Random().nextInt(6)+1;
                 rightdice=Random().nextInt(6)+1;
                  setState(() {
                    
                  });
                },),
                Text("${leftdice+rightdice}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
         
        ),
      );
  }
}