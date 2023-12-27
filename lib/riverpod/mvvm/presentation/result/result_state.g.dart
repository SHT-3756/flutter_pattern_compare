// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultStateImpl _$$ResultStateImplFromJson(Map<String, dynamic> json) =>
    _$ResultStateImpl(
      isLoading: json['isLoading'] as bool,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultStateImplToJson(_$ResultStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'results': instance.results,
    };
