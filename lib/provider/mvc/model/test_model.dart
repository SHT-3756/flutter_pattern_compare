import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvc/model/results_model.dart';
import 'package:http/http.dart' as http;

class TestModel extends ChangeNotifier {
  List<Result> result = [];

  void setData() async {
    try {
      final tempRes = await http.get(Uri.parse(
          'https://gist.githubusercontent.com/SHT-3756/96ec182264c7ae0c531691da5a994a08/raw/bf5c0aa9154abfe4c742349914e1d6fd30d7791c/result.json'));
      Map<String, dynamic> jsonResponse = jsonDecode(tempRes.body);
      Iterable data = jsonResponse['data'];
      result.addAll(data.map((e) => Result.fromJson(e)).toList());
      
      notifyListeners();
    } catch (e) {
      return null;
    }
  }
}