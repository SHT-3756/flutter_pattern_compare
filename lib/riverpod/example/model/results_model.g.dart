// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultsModelImplToJson(_$ResultsModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
