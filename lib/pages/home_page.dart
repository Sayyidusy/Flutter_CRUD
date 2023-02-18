// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:crud_motion/pages/add_student_page.dart';
import 'package:crud_motion/pages/list_student_page.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('CRUD Data Profile'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddStudentPage(),
                  ),
                )
              },
              child: Text('Add', style: TextStyle(fontSize:20.0)),
              style: ElevatedButton.styleFrom(primary:Colors.orangeAccent),
            )
          ],
        ),
      ),body: ListStudentPage(),
    );
  }
}