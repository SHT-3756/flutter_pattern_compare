import 'package:flutter_state_compare/provider/mvvm/data/data_source/result_api_helper.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/model/result_model.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/repository/result_repository.dart';

class ResultRepositoryImpl implements ResultRepository {
  final ResultApiHelper fb;

  ResultRepositoryImpl(this.fb);

  @override
  Future<List<Result>> getResults() async {
    return await fb.getResults();
  }
}
