import 'package:flutter/material.dart';
import 'package:flutter_state_compare/getx/mvc/controller/result_controller.dart';
import 'package:get/get.dart';

class ResultScreen extends GetView<ResultController> {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<String> tabData = controller.getTabList();

    return DefaultTabController(
      initialIndex: 0,
      length: tabData.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MVC Demo'),
          bottom: TabBar(
            controller: controller.tabController,
            tabs: List.generate(
              tabData.length,
              (index) => Tab(
                child: Text(tabData[index]),
                // text: tabData[index],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: controller.tabController,
          children: List.generate(tabData.length, (index) => CustomTabBarList(index)),
        ),
      ),
    );
  }
}

// 재사용 컴포넌트
class CustomTabBarList extends GetView<ResultController> {
  final int index;

  const CustomTabBarList(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: List.generate(
          controller.serverStateList.value.length,
          (index) => ListTile(
            leading: Text(controller.serverStateList.value[index].productImage),
            title: Text(
              controller.serverStateList.value[index].title,
            ),
          ),
        ),
      ),
    );
  }
}
