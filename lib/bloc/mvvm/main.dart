import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_compare/bloc/mvvm/presentation/result/result_screen.dart';

void main() {
  Bloc.observer = const ResultObserver();
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BLOC MVVM',
      home: ResultScreen(),
    );
  }
}

class ResultObserver extends BlocObserver {
  const ResultObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType} $change');
  }
}