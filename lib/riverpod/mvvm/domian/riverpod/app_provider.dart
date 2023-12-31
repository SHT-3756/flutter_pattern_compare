// 앱 전역 상태 관리
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/app/app_global_state.dart';

final appStateProvider = StateNotifierProvider<AppStateProvider, AppGlobalState>((ref) => AppStateProvider());

class AppStateProvider extends StateNotifier<AppGlobalState> {
  AppStateProvider() : super(const AppGlobalState(isLogin: false, currentIndex: 0)) {

    if(!state.isLogin) {
      Future.delayed(const Duration(seconds: 10), () {
        changeLoginState();
      });
    }
  }

  void changeLoginState() {
    state = state.copyWith(
      isLogin: !state.isLogin,
    );

    print(state.isLogin);
  }

  void changeCurrentIndex(int index) {
    state = state.copyWith(
      currentIndex: index,
    );
    print(state.currentIndex);
  }

}
