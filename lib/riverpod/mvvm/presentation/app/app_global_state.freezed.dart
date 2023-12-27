// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppGlobalState _$AppGlobalStateFromJson(Map<String, dynamic> json) {
  return _AppGlobalState.fromJson(json);
}

/// @nodoc
mixin _$AppGlobalState {
  bool get isLogin => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppGlobalStateCopyWith<AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGlobalStateCopyWith<$Res> {
  factory $AppGlobalStateCopyWith(
          AppGlobalState value, $Res Function(AppGlobalState) then) =
      _$AppGlobalStateCopyWithImpl<$Res, AppGlobalState>;
  @useResult
  $Res call({bool isLogin, int currentIndex});
}

/// @nodoc
class _$AppGlobalStateCopyWithImpl<$Res, $Val extends AppGlobalState>
    implements $AppGlobalStateCopyWith<$Res> {
  _$AppGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppGlobalStateImplCopyWith<$Res>
    implements $AppGlobalStateCopyWith<$Res> {
  factory _$$AppGlobalStateImplCopyWith(_$AppGlobalStateImpl value,
          $Res Function(_$AppGlobalStateImpl) then) =
      __$$AppGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin, int currentIndex});
}

/// @nodoc
class __$$AppGlobalStateImplCopyWithImpl<$Res>
    extends _$AppGlobalStateCopyWithImpl<$Res, _$AppGlobalStateImpl>
    implements _$$AppGlobalStateImplCopyWith<$Res> {
  __$$AppGlobalStateImplCopyWithImpl(
      _$AppGlobalStateImpl _value, $Res Function(_$AppGlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? currentIndex = null,
  }) {
    return _then(_$AppGlobalStateImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppGlobalStateImpl implements _AppGlobalState {
  const _$AppGlobalStateImpl(
      {required this.isLogin, required this.currentIndex});

  factory _$AppGlobalStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppGlobalStateImplFromJson(json);

  @override
  final bool isLogin;
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'AppGlobalState(isLogin: $isLogin, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGlobalStateImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLogin, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      __$$AppGlobalStateImplCopyWithImpl<_$AppGlobalStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppGlobalStateImplToJson(
      this,
    );
  }
}

abstract class _AppGlobalState implements AppGlobalState {
  const factory _AppGlobalState(
      {required final bool isLogin,
      required final int currentIndex}) = _$AppGlobalStateImpl;

  factory _AppGlobalState.fromJson(Map<String, dynamic> json) =
      _$AppGlobalStateImpl.fromJson;

  @override
  bool get isLogin;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
