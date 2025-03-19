import 'dart:core';

import 'package:flutter/material.dart';

class TecherPage extends StatelessWidget {

  List<Map<String,String>> student=[
    {"Name":"Al-Amin","Best_Friend":"Ami_nijei","Semester":"7"},
    {"Name":"Alif","Best_Friend":"Arafat","Semester":"7"},
    {"Name":"Asraful","Best_Friend":"Mahadi","Semester":"7"},
    {"Name":"Mahadi","Best_Friend":"Hasinur","Semester":"7"},
    {"Name":"Arafat","Best_Friend":"AlAmin","Semester":"7"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text("This is our very dumb students."),
            SizedBox(height: 50,),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return StudentCard();
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 50,
          child: Row(
            children: [
              ClipOval(child: Image.asset("assets/images/dollar.PNG")),
              SizedBox(width: 20,),
              Text("Name"),
              SizedBox(width: 20,),
              Text("best_friend"),
              SizedBox(width: 20,),
              Text("semester"),
            ],
          ),
        ),
      ),
    );
  }
}
