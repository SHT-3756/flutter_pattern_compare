import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvc/model/results_model.dart';
import 'package:flutter_state_compare/provider/mvvm/di/provider_setup.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MVC',
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Results _model = Results(result: []);
    return ChangeNotifierProvider<Results>(
      create: (_) => _model,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MVC-Provider1'),
        ),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}

