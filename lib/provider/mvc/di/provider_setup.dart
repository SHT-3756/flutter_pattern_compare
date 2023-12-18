import 'package:flutter/cupertino.dart';
import 'package:flutter_state_compare/provider/mvc/controller/result_controller.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/api.dart';
import 'package:flutter_state_compare/provider/mvvm/data/data_source/result_api_helper.dart';
import 'package:provider/provider.dart';

List<ChangeNotifierProvider> getProvider(BuildContext context, ResultApiHelper resultApiHelper) {

  return [
    ChangeNotifierProvider(create: (context) => ResultProvider(resultApiHelper)),
  ];
}