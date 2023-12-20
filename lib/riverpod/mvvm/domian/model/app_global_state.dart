// 앱 전역을 상태 관리하는 모델
// 로그인 상태, 현재 인덱스, 등등

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_global_state.freezed.dart';
part 'app_global_state.g.dart';

@Freezed()
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    required bool isLogin,
    required int currentIndex,
}) = _AppGlobalState;
  factory AppGlobalState.fromJson(Map<String, Object?> json) => _$AppGlobalStateFromJson(json);
}