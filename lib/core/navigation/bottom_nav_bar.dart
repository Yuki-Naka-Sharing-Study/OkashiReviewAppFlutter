import 'package:flutter/material.dart';

import '../../features/check/presentation/check_screen.dart';
import '../../features/review/presentation/review_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    CheckScreen(),
    ReviewScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'チェック',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rate_review),
            label: 'レビュー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
    );
  }
}
