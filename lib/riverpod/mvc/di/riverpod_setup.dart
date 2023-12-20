import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvc/data/data_source/api.dart';
import 'package:flutter_state_compare/riverpod/mvc/data/data_source/result_api_helper.dart';
import 'package:flutter_state_compare/riverpod/mvc/data/repository/results_repository_impl.dart';
import 'package:flutter_state_compare/riverpod/mvc/domian/repository/result_repository.dart';
import 'package:flutter_state_compare/riverpod/mvc/domian/use_case/get_results_use_case.dart';
import 'package:flutter_state_compare/riverpod/mvc/presentation/result/result_view_model.dart';

import '../domian/use_case/use_case.dart';

// List<ProviderObserver?>
// Future<List<ProviderObserver>> getRiverPodProvider() async {
//   Api api = Api();
//   ResultApiHelper helper = ResultApiHelper(api);
//   ResultRepository repository = ResultRepositoryImpl(helper);
//
//   UseCase useCase = UseCase(
//     getResults: GetResultsUseCase(repository),
//   );
//   ResultViewModel resultViewModel = ResultViewModel(useCase);
//
//   return [
//
//   ];
// }
