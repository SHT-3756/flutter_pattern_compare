import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetXMVC());
}

class GetXMVC extends StatelessWidget {
  const GetXMVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => GetxMVCScreen(),
          binding: BindingsBuilder(() {
            Get.put(GetxMvcController());
          }),
        ),
      ],
    );
  }
}

class GetxMVCScreen extends GetView<GetxMvcController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('getxmvc'),
        ),
        body: Obx(
          () => ListView(children: [
            ...controller.lists.map((element) => Text(element.title))
          ]),
        ));
  }
}

class GetxMvcController extends GetxController {
  RxList<DummyList> lists = <DummyList>[].obs;

  GetxMvcController() {
    fetch();
  }

  void fetch() {
    Future.delayed(Duration(seconds: 2), () {
      List<DummyList> dummy = [
        DummyList(title: '안녕', name: '이름1'),
        DummyList(title: '안녕', name: '이름1'),
      ];

      lists.value.addAll(dummy);
      lists.refresh();
    });
  }
}

class DummyList {
  final String title;
  final String name;

  DummyList({required this.title, required this.name});
}
