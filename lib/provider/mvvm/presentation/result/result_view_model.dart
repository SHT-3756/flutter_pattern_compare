import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/model/result_model.dart';
import 'package:flutter_state_compare/provider/mvvm/presentation/result/result_state.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/use_case/use_case.dart';

class ResultViewModel with ChangeNotifier {
  final UseCase useCase;

  ResultState _state = ResultState(results: [], isLoading: false);

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

  // Future<void>
}
