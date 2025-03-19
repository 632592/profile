import 'package:flutter/material.dart';
import 'package:profile_prototype/TeacherPage.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('school'),
        
      ),
      body: Column(
        children: [
          Text("This is School Page"),
          SizedBox(height: 25,),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TecherPage() ));
                },
                child: Text("Clik me")),
          ),
        ],
      ),
    );
  }
}
