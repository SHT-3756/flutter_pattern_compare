import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'test_model.dart';

class TestController extends StatefulWidget {
  @override
  _TestControllerState createState() => _TestControllerState();
}

class _TestControllerState extends State<TestController> {
  TestModel _model = TestModel();

  @override
  void initState() {
    super.initState();

    _fetchData();
  }

  void _fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      _model.setName(data['name']);
      _model.setAge(data['age']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _model,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('name: ${_model.name}'),
              Text('age: ${_model.age}'),
            ],
          ),
        ),
      ),
    );
  }
}
