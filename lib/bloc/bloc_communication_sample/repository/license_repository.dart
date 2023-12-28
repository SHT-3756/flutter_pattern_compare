import 'dart:async';

class LicenseRepository {
  // 도메인에서 의존성 주입시켜서 상태 관리하는 법
  StreamController<bool> changeLicenseStatus =
  StreamController<bool>.broadcast(); //boradcast 는 굳이 안해도되는데, 여러개로 확장할수 있으니!
  late Stream<bool> stream;
  LicenseRepository() { // 라이센스 레포지토리가 생성될떄, stream 을 파라미터로 넘겨준 stream 을 담아주고!
    stream = changeLicenseStatus.stream;
  }
  Future<bool> buyLicense() async {
    await Future.delayed(const Duration(milliseconds: 800));
    changeLicenseStatus.sink.add(true); // 구매가 이뤄질때! 그리고 이걸 구독해주면 된다. product_bloc.dart 에서 구독을 해주면 된다.
    return true;
  }
}