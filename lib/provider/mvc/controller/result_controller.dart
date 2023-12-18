import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvc/model/result_model.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/result_api_helper.dart';

// class ResultProvider extends ChangeNotifier {
//   final ResultApiHelper fb;
//   List<Result> _results = [];
//   List<Result> get results => _results;
//
//   ResultProvider(this.fb) {
//     // _loadResults();
//   }
//
//   Future<void> _loadResults() async {
//     print('실행');
//     _results = (await fb.getResults()).cast<Result>();
//
//     notifyListeners();
//   }
// }

class ResultProvider with ChangeNotifier {
  final ResultApiHelper fb;
  final List<Result> _albumList = List.empty(growable: true);
  ResultProvider(this.fb);
  List<Result> getAlbumList() {
    _fetchAlbums();

    return _albumList;
  }

  void _fetchAlbums() async {

    // final List<Result> result = jsonDecode(response.body).map<Result>((json) => Result.fromJson(json)).toList();
    _albumList.addAll((await fb.getResults()).cast<Result>());
    // _albumList.clear();

    // _albumList.addAll(await response as Iterable<Result>);

    notifyListeners();
  }
}
