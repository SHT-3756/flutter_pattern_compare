import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_presenter.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<TestPresenter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('name: ${presenter.name}'),
            Text('age: ${presenter.age}'),
          ],
        ),
      ),
    );
  }
}
