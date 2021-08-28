import 'package:classroom_hackathon/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listOfSubjects = [
      'English', 'Maths', 'Computer', 'Physics', 'Biology', 'Chemistry', 'Geology',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects'),
        backgroundColor: Colors.cyan.shade900,
        actions: <Widget>[
          TextButton(
            onPressed: (){},
            child: Text(
              'Assignments',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 30,),
          TextButton(
            onPressed: (){},
            child: Text(
              'Quizzes',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 30,),
          TextButton(
            onPressed: (){},
            child: Text(
              'Classes',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 30,),
        ],
      ),
      body: Container(
        child: Wrap(
          children: listOfSubjects.map((subject) {
            return Container(
               margin: EdgeInsets.all(80.0),
               child: SizedBox(
                 width: 200,
                 height: 150,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: primaryColor,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       )
                   ),
                   onPressed: () {},
                   child: Text(
                     subject,
                     style: TextStyle(
                       fontSize: 28.0,
                       color: darkColor,
                     ),
                   ),
                 ),
               )
            );
          }).toList(),
        ),
      ),
    );
  }
}
