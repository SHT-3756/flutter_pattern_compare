import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/example/common/utils/logger.dart';
import 'package:flutter_state_compare/riverpod/mvc/presentation/app/app_screen.dart';

import 'domian/riverpod/app_provider.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        // Provider((ref) => AppStateProvider()),
      ],
      observers: [CustomLogger()], // List<ProviderObserver?>
      child: const MVVMMyApp(),
    ),
  );
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
