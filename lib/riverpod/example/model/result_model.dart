import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';

part 'result_model.g.dart';

@Freezed()
class ResultModel with _$ResultModel {
  const factory ResultModel({
    required String title,
    required String content,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, Object?> json) => _$ResultModelFromJson(json);
}
