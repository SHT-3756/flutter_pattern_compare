
import 'package:flutter_state_compare/riverpod/mvvm/data/data_source/result_api_helper.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/model/result_model.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/repository/result_repository.dart';

class ResultRepositoryImpl implements ResultRepository {
  final ResultApiHelper fb;

  ResultRepositoryImpl(this.fb);

  @override
  Future<List<Result>> getResults() async {
    return await fb.getResults();
  }

}