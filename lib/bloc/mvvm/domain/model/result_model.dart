import 'package:json_annotation/json_annotation.dart';

part 'result_model.g.dart';

@JsonSerializable()
class Result {
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