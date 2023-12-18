import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_compare/bloc/bloc/bloc.dart';
import 'package:flutter_state_compare/bloc/bloc/screen.dart';
import 'package:flutter_state_compare/bloc/bloc/state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<AppBlocBloc>(
        create: (context) => AppBlocBloc(),
        child: BlocBuilder<AppBlocBloc, AppBlocState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(title: const Text('test')),
              body: Screen(state),
            );
          },
        ),
      ),
    );
  }
}
