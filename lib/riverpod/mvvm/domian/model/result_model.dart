import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@Freezed()
class Result with _$Result {
  const factory Result({
    required String? title,
    required String? name,
}) = _Result;
  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}