import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/app.dart';

void main() {
  runApp(const ProviderScope(child: MVVMMyApp()));
}

class MVVMMyApp extends StatelessWidget {
  const MVVMMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppScreen(),
    );
  }
}




