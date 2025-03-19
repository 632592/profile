import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          SizedBox(height: 50),
          Align(
            alignment: Alignment.topCenter,
            child: ClipOval(
              child: Image.asset(
                "assets/images/pexels-photo-771742.webp",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Al-Amin',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          SizedBox(height: 10),
          Text(
            'abdulaalamin239@gmail.com',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Follow Al-Amin');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Follow Al-Amin',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Message');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Message',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(8.0),
              children: [
                Image.asset("assets/images/pexels-photo-771742.webp", fit: BoxFit.cover),
                Image.asset("assets/images/cent.PNG", fit: BoxFit.cover),
                Image.asset("assets/images/dollar.PNG", fit: BoxFit.cover),
                Image.asset("assets/images/dollar portrait.PNG", fit: BoxFit.cover),
                Image.asset("assets/images/profile_image.PNG", fit: BoxFit.cover),
                Image.asset("assets/images/scape.PNG", fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}