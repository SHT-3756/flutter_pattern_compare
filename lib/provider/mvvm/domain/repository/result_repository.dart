import 'package:flutter_state_compare/provider/mvvm/domain/model/result_model.dart';

abstract class ResultRepository {
  // 결과 리스트 가져오기
  Future<List<Result>> getResults();

  // 해당되는 결과 페이지 가져오기
  Future<Result> getResultId(int id);

}