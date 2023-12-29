import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/login_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;

  LoginBloc(this._loginRepository) : super(LoginState(false)) {
    on<LoginEvent>((event, emit) async {
      var result = await _loginRepository.fetchLogin();
      emit(LoginState(result));
    });
  }

  @override
  void onChange(Change<LoginState> change) {
    super.onChange(change);
  }

  @override
  void onTransition(Transition<LoginEvent, LoginState> transition) {
    super.onTransition(transition);
  }
}

abstract class LoginEvent extends Equatable {}

class FetchLoginEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class LoginState extends Equatable {
  bool isLogined;

  LoginState(this.isLogined);

  @override
  List<Object?> get props => [isLogined];
}
