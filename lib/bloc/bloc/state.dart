// 블록은 꼭 3개의 기능을 가진 파일이 필요하다.
// 상태 관리하는 state
// 이벤트 관리하는 event
// 로직을 관리하는 bloc

import 'package:equatable/equatable.dart';

class AppBlocState extends Equatable {
  final int count;
  final int selectCount;

  const AppBlocState({
    this.count = 0,
    this.selectCount = 0,
  });

  AppBlocState copyWith({int? count, int? selectCount}) {
    return AppBlocState(
      count: count ?? this.count,
      selectCount: selectCount ?? this.selectCount,
    );
  }

  @override
  List<Object?> get props => [count, selectCount];
}
