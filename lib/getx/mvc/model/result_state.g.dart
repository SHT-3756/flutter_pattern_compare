// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultState _$ResultStateFromJson(Map<String, dynamic> json) => ResultState(
      resultResState: (json['resultResState'] as List<dynamic>)
          .map((e) => ResultResState.fromJson(e as Map<String, dynamic>))
          .toList(),
      key: json['key'] as String,
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$ResultStateToJson(ResultState instance) =>
    <String, dynamic>{
      'resultResState': instance.resultResState,
      'key': instance.key,
      'isLoading': instance.isLoading,
    };

ResultResState _$ResultResStateFromJson(Map<String, dynamic> json) =>
    ResultResState(
      productImage: json['productImage'] as String,
      title: json['title'] as String,
      applyCount: json['applyCount'] as int,
      winCount: json['winCount'] as int,
      status: json['status'] as String,
      dateString: json['dateString'] as String,
    );

Map<String, dynamic> _$ResultResStateToJson(ResultResState instance) =>
    <String, dynamic>{
      'productImage': instance.productImage,
      'title': instance.title,
      'applyCount': instance.applyCount,
      'winCount': instance.winCount,
      'status': instance.status,
      'dateString': instance.dateString,
    };
