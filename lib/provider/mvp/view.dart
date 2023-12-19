import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';
import 'presenter.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  final TestPresenter _presenter = TestPresenter(
    TestModel()
  );

  @override
  void initState() {
    super.initState();
    _presenter.init();
  }

  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<TestPresenter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('제발'),
      ),
      body: ListView(
        children: [
          ...presenter.results.map((e) => Text(e.title))
        ],
      ),
    );
  }
}
