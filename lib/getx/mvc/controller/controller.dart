import 'package:get/get.dart';

import '../model/model.dart';

class MyController extends GetxController {
  final model = MyModel();

  increment() => model.increment();
}