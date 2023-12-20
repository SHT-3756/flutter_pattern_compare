import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domian/model/result_model.dart';

part 'result_state.freezed.dart';

part 'result_state.g.dart';

@freezed
class ResultState with _$ResultState {
  const factory ResultState({
    required bool isLoading,
    required List<Result> results,
  }) = _ResultState;

  factory ResultState.fromJson(Map<String, Object?> json)
      => _$ResultStateFromJson(json);
}