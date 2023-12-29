import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'bloc/login_bloc.dart';
import 'bloc/product_bloc.dart';
import 'repository/login_repository.dart';
import 'repository/product_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => LoginRepository()), // 로그인
          RepositoryProvider(create: (context) => ProductRepository()), // 홈 상품
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LoginBloc(context.read<LoginRepository>()),),
            BlocProvider(
              create: (context) => ProductBloc(
                context.read<ProductRepository>(),
                context.read<LoginRepository>(),
              ),
            ),
          ],
          child: App(),
        ),
      ),
    );
  }
}
