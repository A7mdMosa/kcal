import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kcal_app/kcal_icons.dart';
import 'package:kcal_app/presentation/screens/profile_screen.dart';
import 'package:kcal_app/presentation/screens/search_screen.dart';
import 'package:kcal_app/presentation/screens/your_feed_screen.dart';

import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const YourFeedScreen(),
    const SearchScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        unselectedIconTheme:
            IconThemeData(color: const Color(0XFFADADAD), size: 36.h),
        selectedIconTheme:
            IconThemeData(color: const Color(0XFF91C788), size: 36.h),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Kcal.homefill,
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Kcal.searchfill), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Kcal.heartfill,
              ),
              label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Kcal.profilefill), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
