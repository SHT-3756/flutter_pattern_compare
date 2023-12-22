import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/riverpod/mvvm/data/data_source/result_api_helper.dart';
import 'package:flutter_state_compare/riverpod/mvvm/data/repository/results_repository_impl.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/repository/result_repository.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/riverpod/app_provider.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/use_case/get_results_use_case.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/result/result_state.dart';

import '../domian/use_case/use_case.dart';
import '../presentation/result/result_view_model.dart';

// Future<List<Override>> getRiverPodProvider() async {
//   Api api = Api();
//   ResultApiHelper helper = ResultApiHelper(api);
//   ResultRepository repository = ResultRepositoryImpl(helper);
//
//   UseCase useCase = UseCase(
//     getResults: GetResultsUseCase(repository),
//   );
//
//   final appProvider = Provider((ref) => AppStateProvider());
//
//   // static SimpleController get to => Get.find();
//   // getter 함수
//
//   return [
//     appProvider,
//     // resultViewModelNotifierProvider,
//   ];
// }

// final resultViewModelNotifierProvider = StateNotifierProvider<ResultViewModelNotifier, ResultState>((ref) => ResultViewModelNotifier(useCase));

class RiverPodInit {

  func() {
    Api api = Api();
    ResultApiHelper helper = ResultApiHelper(api);
    ResultRepository repository = ResultRepositoryImpl(helper);
    return repository;
  }


    getOverrides() {
      return [
        Provider((ref) => UseCase(getResults: GetResultsUseCase(func())))
      ];
    }

  final appProvider = Provider((ref) => AppStateProvider());
}

