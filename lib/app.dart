
import 'package:flutter/material.dart';
import 'package:vadhyantram/login/login_page.dart';
import 'package:vadhyantram/login/signup.dart';
import 'package:vadhyantram/on_boarding_screens/onboarding.dart';
import 'package:vadhyantram/utils/Theme/theme.dart';

import 'Pages/app_routes.dart';
import 'Pages/edit_profile_page.dart';
import 'Pages/home_page.dart';
import 'main_page.dart';


///This class is used to setup custom theme
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: VAppTheme.lightTheme,
      darkTheme: VAppTheme.darkTheme,
      home:OnBoardingScreen(),

    initialRoute: '/',
    routes: {

      '/Signup': (context) => Signup(),
      '/Login': (context) => LoginPage(),
      '/mainApp': (context) => App(),
      '/main': (context) => MainPage(),
      '/Homepage': (context) => HomePage(),
    },
    );
  }
}