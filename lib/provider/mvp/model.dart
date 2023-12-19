import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestModel extends ChangeNotifier {
  List<Result> results = [];

  void setData() async {
    try {
      final tempRes = await http.get(Uri.parse(
          'path~'));
      Map<String, dynamic> jsonResponse = jsonDecode(tempRes.body);
      Iterable data = jsonResponse['data'];
      results.addAll(data.map((e) => Result.fromJson(e)).toList());
      notifyListeners();
    } catch (e) {
      return null;
    }
  }
}

class Result {
  String title;
  String body;

  Result({required this.title, required this.body});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      title: json['title'],
      body: json['body'],
    );
  }
}
