import 'package:flutter/foundation.dart';

class TestModel extends ChangeNotifier {
  String name = '';
  int age = 0;

  void setName(String name) {
    this.name = name;
    notifyListeners();
  }

  void setAge(int age) {
    this.age = age;
    notifyListeners();
  }
}
