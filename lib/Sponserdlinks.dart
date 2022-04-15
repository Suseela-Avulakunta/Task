import 'package:flutter/material.dart';

class SponseredLinks extends StatelessWidget {
  const SponseredLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Sponsered Links',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              // Expanded(
              //   child: Text(''),
              // ),
              Expanded(
                  child:Column(
                    children: [
                       Image.network(
                'https://images.firstpost.com/wp-content/uploads/2018/05/Swiggy-720.jpg?impolicy=website&width=1200&height=800',
                width: 50,
                height: 50,
              ),
              Text('Swiggy')
                    ],
                  )),
              Expanded(
                child: Text(''),
              ),
              Expanded(
                  child: Column(
                children: [
                  Image.network(
                    'https://images.ixigo.com/image/upload/ixigo/6aaae6998a0dbccefca2ecd9f5a2f37b-mzybn.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('ixigo')
                ],
              )),
              Expanded(
                child: Text(''),
              ),
              Expanded(
                  child: Column(
                    children: [
                      Image.network(
                'https://assets.entrepreneur.com/content/3x2/2000/20180511063849-flipkart-logo-detail-icon.jpeg',
                width: 50,
                height: 50,
              ),
              Text('Flipkart')
                    ],
                  )),
              Expanded(
                child: Text(''),
              ),
              Expanded(
                  child: Column(
                    children: [
                      Image.network(
                'https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/ee/ee/91/eeee91f3-13c3-92be-f169-8ffa196e796e/source/512x512bb.jpg',
                width: 50,
                height: 50,
              ),
              Text('My11Circle')
                    ],
                  )),
              Expanded(
                child: Text(''),
              ),
            ],
          )
        ],
      ),
    );
  }
}
