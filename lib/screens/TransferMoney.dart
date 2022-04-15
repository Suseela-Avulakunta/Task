import 'package:flutter/material.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Transfer Money',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(''),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blue,
                    child: Icon(
                      Icons.person_outline,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(''),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blue,
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(''),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blue,
                    child: Icon(
                      Icons.account_balance_outlined,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(''),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Text('')),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 50, right: 40, top: 10),
                child: Text('To Mobile\n Number'),
              )),
              Expanded(child: Text('')),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 50, right: 40, top: 10),
                child: Text('To Wallet\n Adress'),
              )),
              Expanded(child: Text('')),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 50, right: 40, top: 10),
                child: Text('Check Bank\n Balance'),
              )),
              Expanded(child: Text('')),
            ],
          ),
          Container(
            height: 38,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 51,
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                  color: Colors.lightBlueAccent),
              child: Row(
                children: [
                  Text.rich(TextSpan(
                      text: 'My UPI ID : ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                          text: '   98576142@gb',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        )
                      ])),
                  Expanded(child: Text('')),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
