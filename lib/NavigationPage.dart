import 'package:flutter/material.dart';
import 'package:profile_prototype/ProfilePage.dart';
import 'package:profile_prototype/SchoolPage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedindex=0;
  List _widgetOption  =[
    Text("Index 0: Home"),
    Text("Index 1: Business"),
    SchoolPage(),
    ProfilePage()
  ];

  void _onitemTapped(int index){
    setState(() {
      _selectedindex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPI Social"),
      ),
      body: _widgetOption.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),label: 'Business'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),label: 'School'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),label: 'Profile'
          )
        ],
        onTap:_onitemTapped,
        currentIndex:_selectedindex ,
        selectedItemColor:Colors.blue ,
        unselectedItemColor: Colors.amber,
      ),
    );
  }
}
