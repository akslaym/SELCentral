import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quote {
  String author;
  String text;
  Quote({this.author, this.text});

  factory Quote.fromJson(Map<String, dynamic> json) {
    int randomIndex = Random().nextInt(175);
    return Quote(
      author: json["Items"][randomIndex]["Author"],
      text: json["Items"][randomIndex]["Quote"],
    );
  }
}
