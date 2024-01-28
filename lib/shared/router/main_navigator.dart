import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testovoe/features/home/presentation/ui/home_page.dart';
import 'package:testovoe/features/login/presentation/state/auth_bloc/auth_bloc.dart';
import 'package:testovoe/features/profile/presentation/ui/pages/profile_page.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  static const _pages = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthInitialState || state is AuthUnauthenticatedState) {
          Navigator.of(context).pushReplacementNamed('/auth');
        }
      },
      child: CupertinoTabScaffold(
        tabBuilder: (_, index) {
          return CupertinoTabView(
            builder: (_) => _pages[index],
          );
        },
        tabBar: CupertinoTabBar(
          border: const Border(
            top: BorderSide(color: Colors.black, width: 0.5),
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() => _selectedIndex = index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home_page_navbar_icon.png',
                color: _selectedIndex != 0 ? Colors.grey : null,
              ),
              label: 'Мои проекты',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile_page_navbar_icon.png',
                color: _selectedIndex != 1 ? Colors.grey : null,
              ),
              label: 'Мой аккаунт',
            ),
          ],
        ),
      ),
    );
  }
}
