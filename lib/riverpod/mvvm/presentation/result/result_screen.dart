import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/riverpod/app_provider.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/result/result_view_model.dart';

class ResultScreen extends ConsumerStatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> with CustomResultProvider {
  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appStateProvider);
    final resultsState = ref.watch(resultProvider);

    if (!appState.isLogin) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text('로그인 확인중...'),
          ],
        ),
      );
    }
    return Container(
      color: Colors.yellow,
      child: ListView.builder(
          itemCount: resultsState.results.length,
          itemBuilder: (context, index) {
            final data = resultsState.results[index];

            return ListTile(
              title: Text(data.title),
            );
          }),
    );
  }
}
