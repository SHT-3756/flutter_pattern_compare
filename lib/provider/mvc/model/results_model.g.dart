// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      result: (json['result'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      productImage: json['productImage'] as String,
      title: json['title'] as String,
      applyCount: json['applyCount'] as int,
      winCount: json['winCount'] as int,
      status: json['status'] as String,
      dateString: json['dateString'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'productImage': instance.productImage,
      'title': instance.title,
      'applyCount': instance.applyCount,
      'winCount': instance.winCount,
      'status': instance.status,
      'dateString': instance.dateString,
    };
