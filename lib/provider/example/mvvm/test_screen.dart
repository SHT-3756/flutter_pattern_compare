import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_view_model.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TestViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('name: ${viewModel.name}'),
            Text('age: ${viewModel.age}'),
          ],
        ),
      ),
    );
  }
}
