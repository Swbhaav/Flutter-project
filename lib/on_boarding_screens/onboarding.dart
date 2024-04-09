import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vadhyantram/intro_pages/introPage1.dart';
import 'package:vadhyantram/intro_pages/introPage2.dart';
import 'package:vadhyantram/intro_pages/introPage3.dart';

import '../login/login_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  ///Keep track if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal pages
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
              alignment: Alignment(0, 0.80),

              ///+y means towards the bottom
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///Skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);

                        ///page index start from 0
                      },
                      child: Text('Skip')),

                  ///dot indicator
                  SmoothPageIndicator(controller: _controller, count: 3),

                  ///Next
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginPage();
                            }));
                          },
                          child: Text('Done'))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('Next')),
                ],
              )),
        ],
      ),
    );
  }
}
