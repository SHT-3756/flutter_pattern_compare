import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/riverpod/app_provider.dart';

class PointScreen extends ConsumerWidget {
  const PointScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: appState.isLogin ? const Text('로그인') : Text('비로그인이니 돌아가'),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AnotherScreen()));
          }, child: Text('페이지 이동')),
        ],
      ),
    );
  }
}



class AnotherScreen extends ConsumerWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(),
        body: Center(child: Text(ref.watch(appStateProvider).isLogin ? '로그인' : '비로그인'),));
  }
}
