import 'package:flutter_state_compare/getx/mvc/controller/result_controller.dart';
import 'package:get/get.dart';

import '../mvc/view/result_screen.dart';

abstract class Routes {
  static const INITAL = '/';
  static const DETAILS = '/details';
}

class AppPages {
  static final routes = [
    // mvc
    GetPage(
      name: Routes.INITAL,
      page: () => const ResultScreen(),
      binding: BindingsBuilder(() {
        Get.put(ResultController());
      }),
    ),
    GetPage(name: Routes.DETAILS, page: () => const ResultScreen()),
    // mvp

    // mvvm
  ];
}
