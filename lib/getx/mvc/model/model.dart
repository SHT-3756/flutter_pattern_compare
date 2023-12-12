import 'package:get/get.dart';

class MyModel {
  final count = 0.obs; // Use GetX's Observable to bind the count
  increment() => count.value++;
}