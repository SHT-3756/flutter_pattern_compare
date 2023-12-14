import 'package:flutter_state_compare/provider/mvvm/domain/use_case/get_result_use_case.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/use_case/get_results_use_case.dart';

class UseCase {
  final GetResultsUseCase getResults;
  final GetResultUseCase getResult;

  UseCase({
    required this.getResults,
    required this.getResult,
  });
}
