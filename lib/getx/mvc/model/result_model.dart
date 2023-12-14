import 'package:flutter_state_compare/data/data_source/git_api.dart';
import 'package:flutter_state_compare/getx/mvc/model/result_state.dart';
import 'package:get/get.dart';

class ResultModel {
  RxList<String> tabList = ['전체', '응모', '당첨', '진행중', '종료'].obs; // 백엔드 데이터 가정
  RxList<ResultResState> serverStateList = <ResultResState>[].obs; // 백엔드 데이터 가정
  RxList<ResultState> frontStateList = <ResultState>[].obs;
  RxDouble currentIndex = 0.0.obs;
  ResultState _state = ResultState(resultResState: [], key: '', isLoading: false);

  ResultState get state => _state;

  Future<void> fetchingData() async {
    try {
      _state = _state.copyWith(isLoading: true);
      final snapshot = await GistApi().getTabData();

      for (var doc in snapshot) {
        _state  = state.copyWith(resultResState: doc, key: doc.status);
      }

    } catch (e) {
      print(e);
    }
    _state = _state.copyWith(isLoading: false);

  }

  void setCurrentIndex(RxDouble newValue) {
    currentIndex = newValue;
    tabList[newValue.value.toInt()];
  }
}
