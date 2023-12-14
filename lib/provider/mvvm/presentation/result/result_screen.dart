import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvvm/presentation/detail_result/detail_result_screen.dart';
import 'package:flutter_state_compare/provider/mvvm/presentation/result/result_view_model.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ResultViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(title: const Text('MVVM Demo')),
      body: ListView(
        children: [
          ...state.results.map(
            (result) => GestureDetector(
              onTap: () async {
                // 페이지 이동
                print('클릭');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailResultScreen(result)),
                );
              },
              child: ListTile(
                title: Text(result.title),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
