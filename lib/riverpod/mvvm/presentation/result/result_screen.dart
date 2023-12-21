import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/riverpod/app_provider.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/result/result_view_model.dart';
import 'package:provider/provider.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);
    // final  dd = ref.watch(resultViewModelProvider);
    ResultViewModel resultViewModel;
    // resultViewModel.state
    
    
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: appState.isLogin ? const Text('로그인') : Text('비로그인이니 돌아가'),
            
          ),
          ListView.builder(
            itemCount: ref.watch(ResultViewModel(useCase)),
              itemBuilder: (context, index) {
            return ListTile(title: ,)
          })
        ],
      ),
    );
  }
}
