import 'dart:convert';

import 'package:http/http.dart' as http;
import 'Quote.dart';
import 'dart:math';

Future<Quote> fetchQuote() async {
  final response = await http.get(Uri.parse(
      'https://mfuyns4d2m.execute-api.us-east-2.amazonaws.com/Quotes_Deploy/quotes'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    Map<String, dynamic> map = await json.decode(response.body);
    List<dynamic> data = map["Items"];
    print(data[0]["Author"]);
    print(data[0]["Quote"]);
    return Quote(author: data[0]["Author"], text: data[0]["Quote"]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
