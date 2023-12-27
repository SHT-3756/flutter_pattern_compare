// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultState _$ResultStateFromJson(Map<String, dynamic> json) => ResultState(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$ResultStateToJson(ResultState instance) =>
    <String, dynamic>{
      'results': instance.results,
      'isLoading': instance.isLoading,
    };
