import 'package:flutter/material.dart';
import 'package:interview_task/screens/HomePage.dart';
import 'package:interview_task/screens/SharedPrefernceScreen.dart';
import 'package:interview_task/screens/header.dart';
import 'package:interview_task/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

