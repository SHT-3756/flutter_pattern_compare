// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
