import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/bloc/mvvm/presentation/result/result_screen.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/model/app_global_state.dart';
import 'package:flutter_state_compare/riverpod/mvvm/domian/riverpod/app_provider.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/my/my_screen.dart';
import 'package:flutter_state_compare/riverpod/mvvm/presentation/select/select_screen.dart';

import 'presentation/home/home_screen.dart';
import 'presentation/point/point_screen.dart';

class AppScreen extends ConsumerStatefulWidget {

  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  createState() => _AppScreenState();
}

class _AppScreenState extends ConsumerState<AppScreen> {
  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
  final appState = ref.watch<AppGlobalState>(appStateProvider);

    return Scaffold(
      appBar: AppBar(
        leading: Text(appState.isLogin == true? '로그인' : '비로그인'),
        title: const Text('하하'),
      ),

      body: IndexedStack(
        index: appState.currentIndex,
        children: const [
          HomeScreen(),
          PointScreen(),
          SelectScreen(),
          ResultScreen(),
          MyScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: appState.currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        iconSize: 30.0,
        onTap: (index) {
          ref.read(appStateProvider.notifier).changeCurrentIndex(index);
        },
        items: bottomNavItems
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.iconData),
                activeIcon: Icon(e.activeIconData),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

class BottomNavItem {
  IconData iconData;
  IconData activeIconData;
  String label;

  BottomNavItem({
    required this.iconData,
    required this.activeIconData,
    required this.label,
  });
}

final List<BottomNavItem> bottomNavItems = [
  BottomNavItem(iconData: Icons.home_outlined, activeIconData: Icons.home, label: '홈'),
  BottomNavItem(iconData: Icons.search_outlined, activeIconData: Icons.search, label: '검색'),
  BottomNavItem(iconData: Icons.add_circle_outline, activeIconData: Icons.add_circle, label: '등록'),
  BottomNavItem(iconData: CupertinoIcons.chat_bubble, activeIconData: CupertinoIcons.chat_bubble_fill, label: '채팅'),
  BottomNavItem(iconData: Icons.person_outline, activeIconData: Icons.person, label: 'MY'),
];
