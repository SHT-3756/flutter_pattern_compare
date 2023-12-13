import 'package:flutter/material.dart';
import 'package:flutter_state_compare/getx/mvc/model/result_model.dart';
import 'package:get/get.dart';

class ResultController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController _tabController;
  TabController get tabController => _tabController;

  final resultState = ResultModel();
  get tabList => resultState.tabList;
  get serverStateList => resultState.serverStateList;
  get currentIndex => resultState.currentIndex;

  getTabList() => resultState.tabList;

  fetchingData() => resultState.fetchingData();

  updateTab(RxDouble newValue) => resultState.setCurrentIndex(newValue);

  @override
  void onInit() {
    super.onInit();
    // 워커 등록 ever, once, debounce, interval
    // ever(_tabController.index , (callback) => null)
    _tabController = TabController(length: tabList.length, vsync: this);


    _tabController.addListener(() {
      var position = _tabController.index + _tabController.offset;
      updateTab(RxDouble(position));
    });

    fetchingData();
  }

  @override
  void onReady() {
    super.onReady();

  }
  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }


}
