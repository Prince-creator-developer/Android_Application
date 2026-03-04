import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> menu=["Biryani","Pulao","Fried Rice","Chicken Curry","Mutton Curry","Fish Curry","Paneer Butter Masala","Dal Makhani","Naan","Roti"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(height: 100,
          
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: menu.length,
            itemBuilder: (context, index) {
              return Card(child:Padding(
                padding: EdgeInsets.all(8.0),
                child:Text("${menu[index]}"),
              ),);
              
            },
          ),
          ),
        ],
      ),
    );
  }
}