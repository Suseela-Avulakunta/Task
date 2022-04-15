import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:interview_task/model/CurrentPrice.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefernceScreen extends StatefulWidget {
  const SharedPrefernceScreen({Key? key}) : super(key: key);

  @override
  _SharedPrefernceScreenState createState() => _SharedPrefernceScreenState();
}

class _SharedPrefernceScreenState extends State<SharedPrefernceScreen> {
  @override
  void initState() {
    super.initState();

    saveUserInfo();
  }

  Future<CurrentPrice> getUserInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    Map<String, dynamic> userMap = {};
    final String? priceStr = prefs.getString('price');
    if (priceStr != null) {
      userMap = jsonDecode(priceStr) as Map<String, dynamic>;
    }

    final CurrentPrice currentPrice = CurrentPrice.fromJson(userMap);
    print(currentPrice);
    return currentPrice;
  }

  Future<void> saveUserInfo() async {
    final CurrentPrice currentPrice = CurrentPrice.fromJson({
      "time": {
        "updated": "Apr 14, 2022 16:01:00 UTC",
        "updatedISO": "2022-04-14T16:01:00+00:00",
        "updateduk": "Apr 14, 2022 at 17:01 BST"
      },
      "disclaimer":
          "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
      "chartName": "Bitcoin",
      "bpi": {
        "USD": {
          "code": "USD",
          "symbol": "&#36;",
          "rate": "39,928.2444",
          "description": "United States Dollar",
          "rate_float": 39928.2444
        },
        "GBP": {
          "code": "GBP",
          "symbol": "&pound;",
          "rate": "30,439.8162",
          "description": "British Pound Sterling",
          "rate_float": 30439.8162
        },
        "EUR": {
          "code": "EUR",
          "symbol": "&euro;",
          "rate": "36,747.2410",
          "description": "Euro",
          "rate_float": 36747.241
        }
      }
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool result = await prefs.setString('currentPrice', jsonEncode(currentPrice));
    print(result);
  }

  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: getUserInfo,
        child: Text('Show price info'),
      ),
    );
  }
}
