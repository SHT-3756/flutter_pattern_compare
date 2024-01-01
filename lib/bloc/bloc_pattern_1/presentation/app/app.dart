import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_compare/bloc/bloc_pattern_1/bloc/login_bloc.dart';
import 'package:flutter_state_compare/bloc/bloc_pattern_1/bloc/product_bloc.dart';

import '../../components/app_components.dart';
import 'app_widget.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login-Test'),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DefaultItems(),
            SizedBox(height: 50),
            _LoginedItem(),
          ],
        ),
        bottomNavigationBar: bottomNavi(
          () => context.read<LoginBloc>().add(FetchLoginEvent()),
        ));
  }
}

class _DefaultItems extends StatelessWidget {
  const _DefaultItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text('기본 권한 아이템'),
        ),
        const SizedBox(height: 20),
        if (state is LoadingProductState) loadingComponent(),
        if (state is LoadedProductState)
          productsWidget(
            items: List.generate(
              state.defaultItems?.length ?? 0,
              (index) => state.defaultItems![index],
            ),
          ),
      ],
    );
  }
}

class _LoginedItem extends StatelessWidget {
  const _LoginedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
        ),
        const SizedBox(height: 20),
        if (state is LoadingProductState) loadingComponent(),
        if (state is LoadedProductState && state.payItems == null) lockWidget(),
        if (state is LoadedProductState && state.payItems != null)
          productsWidget(
            items: List.generate(
              state.payItems?.length ?? 0,
              (index) => state.payItems![index],
            ),
          )
      ],
    );
  }
}



