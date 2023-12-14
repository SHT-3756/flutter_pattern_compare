import 'package:flutter_state_compare/provider/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/provider/mvvm/domain/model/result_model.dart';

class ResultApiHelper {
  Api api;

  ResultApiHelper(this.api);

  // id 별 result 가져오기
  // Future<Result?> getResultId(int id) async {
  //   final Iterable? res = await api.get('result$id.json'); // filter 든 orderby , where 건다.
  //   if(res == null) return null;
  //   Map<String, dynamic> convertToRes = toMap(res);
  //   return Result.fromJson(convertToRes);
  // }

  // result 리스트 가져오기
  Future<List<Result>> getResults() async {
    final Iterable? res = await api.get('result.json');

    List<Result> tempArray = [];
    if (res == null) return [];

    for (var data in res) {
      tempArray.add(Result.fromJson(data));
    }

    return res.map((e) => Result.fromJson(e)).toList();
  }

  Map<String, dynamic> toMap(Iterable<dynamic> iterable) {
    Map<String, dynamic> map = {};
    for (var element in iterable) {
      print('ele : $element');
      // map[element["name"]] = element["age"];
    }
    return map;
  }

}
