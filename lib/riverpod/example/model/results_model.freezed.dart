// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  List<ResultModel> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
          ResultsModel value, $Res Function(ResultsModel) then) =
      _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call({List<ResultModel> result});
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsModelImplCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$ResultsModelImplCopyWith(
          _$ResultsModelImpl value, $Res Function(_$ResultsModelImpl) then) =
      __$$ResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultModel> result});
}

/// @nodoc
class __$$ResultsModelImplCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$ResultsModelImpl>
    implements _$$ResultsModelImplCopyWith<$Res> {
  __$$ResultsModelImplCopyWithImpl(
      _$ResultsModelImpl _value, $Res Function(_$ResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ResultsModelImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsModelImpl implements _ResultsModel {
  const _$ResultsModelImpl({required final List<ResultModel> result})
      : _result = result;

  factory _$ResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsModelImplFromJson(json);

  final List<ResultModel> _result;
  @override
  List<ResultModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ResultsModel(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsModelImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      __$$ResultsModelImplCopyWithImpl<_$ResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ResultsModel implements ResultsModel {
  const factory _ResultsModel({required final List<ResultModel> result}) =
      _$ResultsModelImpl;

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsModelImpl.fromJson;

  @override
  List<ResultModel> get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
