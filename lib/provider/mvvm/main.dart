import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvvm/di/provider_setup.dart';
import 'package:flutter_state_compare/provider/mvvm/presentation/result/result_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final providers = await getProviders();

  runApp(
    MultiProvider(
      providers : providers,
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MVVM Demo',
      home: ResultScreen(),
    );
  }
}
