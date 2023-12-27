import 'package:flutter/material.dart';
import 'package:flutter_state_compare/bloc/example/set_state/user_list.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserListPageState()));
              },
              child: const Text('SetState 상태관리'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Getx 상태관리'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Extends 상태관리'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('CopyWith 상태관리'),
            ),
          ],
        ),
      ),
    );
  }
}
