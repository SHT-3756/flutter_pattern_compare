import 'package:flutter_state_compare/provider/mvvm/domain/repository/result_repository.dart';

import '../model/result_model.dart';

class GetResultsUseCase {
    final ResultRepository repository;

    GetResultsUseCase(this.repository);

    // Future<List<Result>> call() async {
    //   List<Result> results = await repository.getResults();
    //
    // }

}