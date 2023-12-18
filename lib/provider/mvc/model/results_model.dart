import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'results_model.g.dart';

@JsonSerializable()
class Results extends ChangeNotifier {
  List<Result> result;

  Results({required this.result}) {
    _fetchData();
  }

  Future _fetchData() async {
    try {
      final tempRes = await http.get(Uri.parse(
          'https://gist.githubusercontent.com/SHT-3756/96ec182264c7ae0c531691da5a994a08/raw/bf5c0aa9154abfe4c742349914e1d6fd30d7791c/result.json'));
      Map<String, dynamic> jsonResponse = jsonDecode(tempRes.body);
      Iterable data = jsonResponse['data'];
      result = data.map((e) => Result.fromJson(e)).toList();
      notifyListeners();
    } catch (e) {
      return null;
    }
  }

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Results copyWith({
    List<Result>? result,
  }) {
    return Results(result: result ?? this.result);
  }
}

@JsonSerializable()
class Result extends ChangeNotifier {
  final String productImage;
  final String title;
  final int applyCount;
  final int winCount;
  final String status;
  final String dateString;

  Result({
    required this.productImage,
    required this.title,
    required this.applyCount,
    required this.winCount,
    required this.status,
    required this.dateString,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Result copyWith({
    String? productImage,
    String? title,
    int? applyCount,
    int? winCount,
    String? status,
    String? dateString,
  }) {
    return Result(
      productImage: productImage ?? this.productImage,
      title: title ?? this.title,
      applyCount: applyCount ?? this.applyCount,
      winCount: winCount ?? this.winCount,
      status: status ?? this.status,
      dateString: dateString ?? this.dateString,
    );
  }

  @override
  String toString() {
    return '$productImage, $title, $applyCount, $winCount, $status, $dateString';
  }
}
