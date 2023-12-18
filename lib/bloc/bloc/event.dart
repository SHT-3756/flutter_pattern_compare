import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AppBlocEvent extends Equatable {
  const AppBlocEvent();

  @override
  List<Object> get props => [];
}

class AppBlocIncrement extends AppBlocEvent {}

class AppBlocDecrement extends AppBlocEvent {}

class AppBlocRest extends AppBlocEvent {}

class AppBlocSelect extends AppBlocEvent {
  final int selectCount;

  const AppBlocSelect(this.selectCount);
  @override
  List<Object> get props => [selectCount];
}
