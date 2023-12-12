import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: '/',
      title: 'MVC Demo',
    );
  }
}
