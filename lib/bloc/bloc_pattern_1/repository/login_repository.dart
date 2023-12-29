import 'dart:async';

// 도메인에서 의존성 주입 시키기
class LoginRepository {
  late Stream<bool> stream;
  StreamController<bool> changeLoginStatus = StreamController<bool>.broadcast();

  LoginRepository() {
    stream = changeLoginStatus.stream;
  }
  Future<bool> fetchLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    changeLoginStatus.sink.add(true);
    return true;
  }
}
