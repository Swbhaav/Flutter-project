import 'package:vadhyantram/Pages/homepage.dart';
import 'package:vadhyantram/Pages/main_page.dart';

import '../Pages/login_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    'home': (context) => HomePage(),
    '/main': (context) => MainPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
}
