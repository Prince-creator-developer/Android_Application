import 'package:flutter/material.dart';
import 'package:diceapp/home.dart';
import 'package:diceapp/menu.dart';
import 'package:diceapp/profile.dart';
import 'package:diceapp/setting.dart';


class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  List<Widget> screens=[
    Homescreen(),
    Setting(),
    Menu(),
    Profile(),
    
  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedindex,
        onTap: (
          value
        ){
          selectedindex=value;
          setState(() {

            
          });
        },
        
      ),
      body: screens[selectedindex],
      
    );
  }
}