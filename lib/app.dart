
import 'package:flutter/material.dart';
import 'package:vadhyantram/on_boarding_screens/onboarding.dart';
import 'package:vadhyantram/utils/Theme/theme.dart';


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
    );
  }
}