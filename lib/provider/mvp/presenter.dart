import 'model.dart';

class TestPresenter {
  final TestModel _model;

  TestPresenter(this._model);

  void init() {
    _model.setData();
  }

  List<Result> get results => _model.results;


  void updateResults() {
  // 업데이트 시 UI 에 알려줄 것
  }

}
