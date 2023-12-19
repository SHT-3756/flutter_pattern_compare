import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TestModel extends ChangeNotifier {
  String name = '';
  int age = 0;

  void setName(String name) {
    this.name = name;
    notifyListeners();
  }

  void setAge(int age) {
    this.age = age;
    notifyListeners();
  }

  void fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      setName(data['name']);
      setAge(data['age']);
    }
  }
}
