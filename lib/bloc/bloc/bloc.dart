import 'package:bloc/bloc.dart';
import 'package:flutter_state_compare/bloc/bloc/event.dart';
import 'package:flutter_state_compare/bloc/bloc/state.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppBlocState> {
  AppBlocBloc() : super(const AppBlocState()) {
    on<AppBlocIncrement>(_increment);
    on<AppBlocDecrement>(_decrement);
    on<AppBlocRest>(_reset);
    on<AppBlocSelect>(_select);
  }


  void _increment(AppBlocIncrement event, Emitter<AppBlocState> emit) {
    emit(state.copyWith(count: state.count + state.selectCount));
  }

  void _decrement(AppBlocDecrement event, Emitter<AppBlocState> emit) {
    emit(state.copyWith(count: state.count - state.selectCount));
  }

  void _reset(AppBlocRest event, Emitter<AppBlocState> emit) {
    emit(state.copyWith(count: 0));
  }

  void _select(AppBlocSelect event, Emitter<AppBlocState> emit) {
    emit(state.copyWith(selectCount: event.selectCount));
  }
}
