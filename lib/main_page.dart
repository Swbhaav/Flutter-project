import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vadhyantram/Pages/home_page.dart';
import 'package:vadhyantram/utils/constants/colors.dart';

import 'profilePage/profile_page.dart';

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

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon:Icon(Iconsax.home), label: 'Home'),

          BottomNavigationBarItem(
              icon:Icon(Iconsax.shop), label: 'Explore'),
          BottomNavigationBarItem(
              icon:Icon(Iconsax.heart), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon:Icon(Iconsax.message), label: 'Notification'),
          BottomNavigationBarItem(
              icon:Icon(Iconsax.user), label: 'Profile'),
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
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),

    Center(
      child: Text('Explore'),
    ),
    Center(
      child: Text('Favourite'),
    ),
    Center(
      child: Text('Notifications'),
    ),
    ProfilePage(),
  ];
}
