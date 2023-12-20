import 'package:flutter_state_compare/riverpod/mvvm/domian/model/result_model.dart';

import '../repository/result_repository.dart';

class GetResultsUseCase {
  final ResultRepository repository;
  GetResultsUseCase(this.repository);

  Future<List<Result>> call() async {
    List<Result> results = await repository.getResults();
    return results;
  }
}