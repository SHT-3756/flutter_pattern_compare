import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomLogger extends ProviderObserver {
  // 업데이트
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    debugPrint('[$provider - Updated] => before : $previousValue, after : $newValue');
  }

  // 추가
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    debugPrint('[$provider - Added] =>  value : $value');
  }

  // 종료
  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {

    debugPrint('[$provider Disposed] => $provider');
  }
  @override
  void providerDidFail(ProviderBase<Object?> provider, Object error, StackTrace stackTrace, ProviderContainer container) {
    debugPrint('[$provider fail] =>  error : $error, stackTrace: $stackTrace');
  }
}