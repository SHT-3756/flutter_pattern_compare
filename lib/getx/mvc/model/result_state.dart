import 'package:json_annotation/json_annotation.dart';

part 'result_state.g.dart';

@JsonSerializable()
class ResultState {
  final List<ResultResState> resultResState;
  final String key;
  final bool isLoading;

  ResultState({
    required this.resultResState,
    required this.key,
    required this.isLoading,
  });

  factory ResultState.fromJson(Map<String, dynamic> json) => _$ResultStateFromJson(json);

  ResultState copyWith({
    String? key,
    List<ResultResState>? resultResState,
    bool? isLoading,
  }) {
    return ResultState(
      resultResState: resultResState ?? this.resultResState,
      key: key ?? this.key,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() {
    return '$key, $resultResState';
  }
}

@JsonSerializable()
class ResultResState {
  final String productImage;
  final String title;
  final int applyCount;
  final int winCount;
  final String status;
  final String dateString;

  ResultResState({
    required this.productImage,
    required this.title,
    required this.applyCount,
    required this.winCount,
    required this.status,
    required this.dateString,
  });

  factory ResultResState.fromJson(Map<String, dynamic> json) => _$ResultResStateFromJson(json);

  ResultResState copyWith({
    String? productImage,
    String? title,
    int? applyCount,
    int? winCount,
    String? status,
    String? dateString,
  }) {
    return ResultResState(
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
