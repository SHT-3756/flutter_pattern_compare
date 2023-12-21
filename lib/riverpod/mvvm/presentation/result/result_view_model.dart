import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/result/result_state.dart';

import '../../domian/model/result_model.dart';
import '../../domian/use_case/use_case.dart';

// final resultViewModelProvider = ChangeNotifierProvider.family.autoDispose<ResultViewModel, UseCase>((ref, UseCase useCase) => ResultViewModel(useCase));

class ResultViewModel extends ChangeNotifier {
  final UseCase useCase;
  ResultState _state = const ResultState(results: [], isLoading: false);

  ResultState get state => _state;

  ResultViewModel(this.useCase) {
    _loadResults();
  }

  Future<void> _loadResults() async {
    _state = state.copyWith(isLoading: true);

    List<Result> results = await useCase.getResults();

    _state = state.copyWith(results: results);
    notifyListeners();
  }
}
