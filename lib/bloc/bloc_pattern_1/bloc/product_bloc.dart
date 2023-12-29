import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_state_compare/bloc/bloc_pattern_1/repository/login_repository.dart';

import '../repository/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  final LoginRepository _loginRepository;

  ProductBloc(this._productRepository, this._loginRepository) : super(InitProductState()) {
    on<ProductEvent>((event, emit) async {
      if (event is DefaultLoadProductEvent) {
        await _defaultLoadProductEvent(event, emit);
      }
      if (event is LoginLoadProductEvent) {
        await _loginLoadProduct(event, emit);
      }
    }, transformer: sequential());
    add(DefaultLoadProductEvent());
    add(LoginLoadProductEvent(false));

    _loginRepository.stream.listen((event) { // 로그인 성공시
      if(event) {
        add(LoginLoadProductEvent(event));
      }
    });
  }

  _defaultLoadProductEvent(DefaultLoadProductEvent event, emit) async {
    emit(LoadingProductState(defaultItems: state.defaultItems, payItems: state.payItems));
    var result = await _productRepository.loadDefaultProduct();
    emit(LoadedProductState(defaultItems: result, payItems: state.payItems));
  }

  _loginLoadProduct(LoginLoadProductEvent event, emit) async {
    emit(LoadingProductState(defaultItems: state.defaultItems, payItems: state.payItems));

    var result = await _productRepository.loadLoginDefaultProduct(event.isLogin);
    emit(LoadedProductState(defaultItems: state.defaultItems , payItems: result));
  }
}

abstract class ProductEvent extends Equatable {}

class DefaultLoadProductEvent extends ProductEvent {
  @override
  List<Object?> get props => [];
}

class LoginLoadProductEvent extends ProductEvent {
  final bool isLogin;

  LoginLoadProductEvent(this.isLogin);

  @override
  List<Object?> get props => [isLogin];
}

abstract class ProductState extends Equatable {
  final List<String>? defaultItems;
  final List<String>? payItems;

  const ProductState({
    this.defaultItems,
    this.payItems,
  });
}

class InitProductState extends ProductState {
  InitProductState() : super(defaultItems: [], payItems: []);

  @override
  List<Object?> get props => [defaultItems, payItems];
}

class LoadingProductState extends ProductState {
  const LoadingProductState({super.defaultItems, super.payItems});

  @override
  List<Object?> get props => [defaultItems, payItems];
}

class LoadedProductState extends ProductState {
  const LoadedProductState({super.defaultItems, super.payItems});

  @override
  List<Object?> get props => [defaultItems, payItems];
}

class ErrorProductState extends ProductState {
  final String errorMessage;

  const ErrorProductState(this.errorMessage);

  @override
  List<Object?> get props => [];
}
