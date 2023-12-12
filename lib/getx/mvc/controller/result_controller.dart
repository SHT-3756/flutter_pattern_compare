import 'package:flutter/material.dart';
import 'package:flutter_state_compare/getx/mvc/model/result_model.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  late TabController tabController;
  final resultState = ResultModel();
  get serverStateList => resultState.serverStateList;

  @override
  void onInit() {
    super.onInit();
    fetchingData();

  }

  getTabList() => resultState.tabList;

  fetchingData() => resultState.fetchingData();

  updateTab(int index) => resultState.updateTab(index);
}
