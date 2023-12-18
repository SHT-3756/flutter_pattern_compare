import 'dart:convert';
import 'package:http/http.dart' as http;

import 'test_model.dart';

class TestPresenter {
  late TestModel _model;

  TestPresenter(TestModel model) {
    _model = model;
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      _model.setName(data['name']);
      _model.setAge(data['age']);
    }
  }

  String get name => _model.name;

  int get age => _model.age;
}
