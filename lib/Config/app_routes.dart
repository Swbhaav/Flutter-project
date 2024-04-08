import 'dart:js';

import 'package:vadhyantram/Pages/edit_profile_page.dart';
import 'package:vadhyantram/Pages/homepage.dart';
import 'package:vadhyantram/Pages/main_page.dart';

import '../Pages/login_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    'home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile':(context)=> EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
