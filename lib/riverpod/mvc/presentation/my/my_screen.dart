import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvc/domian/riverpod/app_provider.dart';

class MyScreen extends ConsumerWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);

    return Container(
        color: Colors.brown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: appState.isLogin,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(appStateProvider.notifier).changeLoginState();
                },
                child: const Text('로그인'),
              ),
            ),
            Offstage(
              offstage: !appState.isLogin,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(appStateProvider.notifier).changeLoginState();
                },
                child: const Text('로그아웃'),
              ),
            ),

          ],
        ));
  }
}
