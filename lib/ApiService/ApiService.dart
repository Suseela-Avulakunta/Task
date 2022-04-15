import 'dart:convert';

import 'package:interview_task/model/CurrentPrice.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<CurrentPrice> fetchData() async {
  final response = await http.get(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'));
 
  if (response.statusCode == 200) {
    return CurrentPrice.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
}