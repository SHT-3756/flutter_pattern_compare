import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/test_model.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: ChangeNotifierProvider(
        create: (_) => TestModel(),
        child: const TestScreen(),
      ),
    );
  }
}
class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final TestModel _model = TestModel();

  @override
  void initState() {
    super.initState();

    _model.setData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestModel>(
      create: (_) => _model,
      child: Scaffold(
        appBar: AppBar(
          title: Text('제발'),
        ),
        body: ListView(
          children: [
            ..._model.result.map((e) => Text(e.title))
          ],
        ),
      ),
    );
  }
}
