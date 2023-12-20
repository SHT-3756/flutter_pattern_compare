
import 'package:flutter_state_compare/riverpod/mvvm/domian/model/result_model.dart';

abstract class ResultRepository {
  Future<List<Result>> getResults();
}