import 'package:flutter_state_compare/provider/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/result_api_helper.dart';
import 'package:flutter_state_compare/provider/mvvm/data/repository/result_repository_impl.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/repository/result_repository.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/use_case/get_result_use_case.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/use_case/get_results_use_case.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/use_case/use_case.dart';
import 'package:flutter_state_compare/provider/mvvm/presentation/result/result_view_model.dart';
import 'package:provider/provider.dart';

Future getProviders() async {

  Api api = Api();
  ResultApiHelper resultApiHelper = ResultApiHelper(api);
  ResultRepository repository = ResultRepositoryImpl(resultApiHelper);

  UseCase useCase = UseCase(
    getResults: GetResultsUseCase(repository),
    getResult: GetResultUseCase(repository),
  );

  ResultViewModel resultsViewModel = ResultViewModel(useCase);

  return [
    ChangeNotifierProvider(create: (_) => resultsViewModel),
  ];
}
