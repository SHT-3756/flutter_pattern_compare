import 'package:freezed_annotation/freezed_annotation.dart';

import 'result_model.dart';

part 'results_model.freezed.dart';

part 'results_model.g.dart';

@Freezed()
class ResultsModel with _$ResultsModel {
  const factory ResultsModel({
    required List<ResultModel> result,
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, Object?> json) => _$ResultsModelFromJson(json);
}