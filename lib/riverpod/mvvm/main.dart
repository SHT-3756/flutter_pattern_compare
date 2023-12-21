import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/example/common/utils/logger.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/app/app_screen.dart';

import 'di/riverpod_setup.dart';

void main() async {
  runApp(
    ProviderScope(
      overrides: await getRiverPodProvider(),
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
