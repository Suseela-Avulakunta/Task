import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 10, top: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Icon(Icons.brightness_5_outlined,
                        size: 40, color: Colors.white),
                  ),
                  Text('Offers',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Icon(Icons.wallet_giftcard_sharp,
                        size: 40, color: Colors.white),
                  ),
                  Text('Rewards',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Icon(Icons.share, size: 40, color: Colors.white),
                  ),
                  Text('Refer and earn',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
