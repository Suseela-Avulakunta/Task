import 'package:flutter/material.dart';
import 'package:interview_task/Sponserdlinks.dart';
import 'package:interview_task/screens/TransferMoney.dart';
import 'package:interview_task/screens/header.dart';
import 'package:interview_task/screens/imageSlider.dart';
import 'package:interview_task/screens/offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: ImageSlider(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: TransferMoney(),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Offers(),),
               Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: SponseredLinks(),
            ),
           Container(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: ImageSlider(),
            ),
          ],
        ),
      ),
    );
  }
}