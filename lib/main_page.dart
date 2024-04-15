import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vadhyantram/Pages/home_page.dart';
import 'package:vadhyantram/utils/constants/colors.dart';

import 'login/profilePage/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Assets/SVG/ic_home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Assets/SVG/ic_favourite.svg'),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Assets/SVG/ic_messages.svg'),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Assets/SVG/ic_messages.svg'),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Assets/SVG/ic_users.svg'), label: 'User')
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: VColors.white,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favourite'),
    ),
    Center(
      child: Text('Add'),
    ),
    Center(
      child: Text('Notifications'),
    ),
    ProfilePage(),
  ];
}
