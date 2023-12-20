import '../../domian/model/result_model.dart';
import 'api.dart';

class ResultApiHelper {
  Api api;

  ResultApiHelper(this.api);

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
