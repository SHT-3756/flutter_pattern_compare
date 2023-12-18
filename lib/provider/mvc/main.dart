import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider//mvc/controller/result_controller.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/result_api_helper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_compare/provider/mvc/view/result/result_screen.dart';

import 'di/provider_setup.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Api api = Api();
//   ResultApiHelper resultApiHelper = ResultApiHelper(api);
//
//
//   runApp(MyApp(resultApiHelper));
// }
//
// class MyApp extends StatelessWidget {
//   ResultApiHelper resultApiHelper;
//   MyApp(this.resultApiHelper, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return  MaterialApp(
//       title: 'MVC Demo',
//       home: ChangeNotifierProvider<ResultController>(
//         create: (context) => ResultController(resultApiHelper) ,
//           child: ResultScreen()),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsFlutterBinding.ensureInitialized();
    Api api = Api();
    ResultApiHelper resultApiHelper = ResultApiHelper(api);

    return MaterialApp(
      home: ChangeNotifierProvider<ResultProvider>(
        create: (context) => ResultProvider(resultApiHelper),
        child: const ResultScreen(),
      ),
    );
  }
}
