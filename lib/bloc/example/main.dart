import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_compare/bloc/example/set_state/user_list.dart';
import 'package:get/get.dart';

import 'cubit/user_list.dart';
import 'cubit/user_list_cubit_extends.dart';
import 'cubit_copywith/user_list.dart';
import 'cubit_copywith/user_list_cubit_copywith.dart';
import 'getx/user_list.dart';
import 'getx/user_list_controller.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserListPageSetState()));
              },
              child: const Text('SetState 상태관리'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                          create: (context) => UserListCubitExtends(),
                          child: const UserListForCubitExtends()),
                    ));

              },
              child: const Text('Extends 상태관리'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.put(UserListController());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserListForGetx(),
                      ));
                },
                child: Text('Getx 상태관리')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                          create: (context) => UserListCubitCopyWith(),
                          child: const UserListForCubitCopyWith()),
                    ));
              },
              child: const Text('CopyWith 상태관리'),
            ),
          ],
        ),
      ),
    );
  }
}
