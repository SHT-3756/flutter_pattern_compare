import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_model.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  TestModel _model = TestModel();

  @override
  void initState() {
    super.initState();

    _model.fetchData();
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
