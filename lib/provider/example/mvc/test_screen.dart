import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_controller.dart';
import 'test_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: ChangeNotifierProvider(
        create: (_) => TestModel(),
        child: TestController(),
      ),
    );
  }
}
