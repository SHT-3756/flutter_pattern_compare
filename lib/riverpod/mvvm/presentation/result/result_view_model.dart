import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/result/result_state.dart';

import '../../data/data_source/result_api_helper.dart';
import '../../data/repository/results_repository_impl.dart';
import '../../domian/model/result_model.dart';
import '../../domian/use_case/get_results_use_case.dart';
import '../../domian/use_case/use_case.dart';

// final resultViewModelProvider = ChangeNotifierProvider.family.autoDispose<ResultViewModel, UseCase>((ref, UseCase useCase) => ResultViewModel(useCase));
//
// class ResultViewModel extends ChangeNotifier {
//   final UseCase useCase;
//   ResultState _state = const ResultState(results: [], isLoading: false);
//
//   ResultState get state => _state;
//
//   ResultViewModel(this.useCase) {
//     _loadResults();
//   }
//
//   Future<void> _loadResults() async {
//     _state = state.copyWith(isLoading: true);
//
//     List<Result> results = await useCase.getResults();
//
//     _state = state.copyWith(results: results);
//     notifyListeners();
//   }
// }


abstract mixin class CustomResultProvider {
  StateNotifierProvider resultProvider = StateNotifierProvider<ResultViewModelNotifier , ResultState>((ref) => ResultViewModelNotifier());
}

class ResultViewModelNotifier extends StateNotifier<ResultState> {
  GetResultsUseCase resultsUseCase = GetResultsUseCase(ResultRepositoryImpl(ResultApiHelper(Api())));

  ResultViewModelNotifier() : super(const ResultState(isLoading: false, results: [])) {
   _loadResults();
  }

  Future<void> _loadResults() async {
    state = state.copyWith(isLoading: true);
    List<Result> results = await resultsUseCase();
    state = state.copyWith(results: results);
    state = state.copyWith(isLoading: false);
  }

}
