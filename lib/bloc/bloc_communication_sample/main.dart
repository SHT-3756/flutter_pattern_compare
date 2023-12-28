import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_compare/bloc/bloc_communication_sample/repository/license_repository.dart';
import 'package:flutter_state_compare/bloc/bloc_communication_sample/repository/product_repository.dart';

import 'bloc/license_bloc.dart';
import 'bloc/product_bloc.dart';
import 'components/buy_btn.dart';
import 'components/loading.dart';
import 'components/lock_widget.dart';
import 'components/products_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => ProductRepository()),
          RepositoryProvider(create: (context) => LicenseRepository()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => ProductBloc(
                    context.read<ProductRepository>(),
                    context.read<LicenseRepository>())),
            BlocProvider(
                create: (context) =>
                    LicenseBloc(context.read<LicenseRepository>())),
          ],
          child: const App(),
        ),
      ),
    );
  }
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc to Comunication'),
      ),
      // body: BlocListener<LicenseBloc,LicenseState>( // 화면단에서 의존성 주입시켜 함수 실행하는 밥법
      //   listener: (context, state) {
      //     if(state.hasLicense) {
      //       context.read<ProductBloc>().add(PayLoadProductEvent(state.hasLicense));
      //     }
      //   },
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DefaultItems(),
          const SizedBox(height: 50),
          _PayItems(),
        ],
      ),
      bottomNavigationBar: BuyBtn(onTap: () {
        context.read<LicenseBloc>().add(BuyLicenseEvent());
      }),
    );
  }
}

class _DefaultItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            '기본 권한 아이템',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(height: 20),
        if (state is LoadingProductState) const Loading(),
        if (state is LoadedProductState)
          ProductsWidget(
              items: List.generate(state.defaultItems?.length ?? 0,
                      (index) => state.defaultItems![index])),
      ],
    );
  }
}

class _PayItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            '유료 권한 아이템',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(height: 20),
        if (state is LoadingProductState) const Loading(),
        if (state is LoadedProductState && state.payItems == null)
          const LockWidget(),
        if (state is LoadedProductState && state.payItems != null)
          ProductsWidget(
              items: List.generate(state.payItems?.length ?? 0,
                      (index) => state.payItems![index])),
      ],
    );
  }
}