import 'package:flutter_state_compare/provider/mvvm/domain/model/result_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result_state.g.dart';

@JsonSerializable()
class ResultState {
  final List<Result> results;
  final bool isLoading;

  ResultState({
    required this.results,
    required this.isLoading,
  });

  factory ResultState.fromJson(Map<String, dynamic> json) => _$ResultStateFromJson(json);

  ResultState copyWith({
    List<Result>? results,
    bool? isLoading,
  }) {
    return ResultState(
      results: results ?? this.results,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
