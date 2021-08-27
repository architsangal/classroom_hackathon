import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var subjects = ["English", "Maths", "Computer", "Physics", "Biology"];
    List<Widget> listOfSubjects = [];

    return Scaffold(
      body: Container(
          child: Wrap(
        children: listOfSubjects,
      )),
    );
  }
}
