import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:onboardingscreen/introscreens/intropg1.dart';
import 'package:onboardingscreen/introscreens/intropg2.dart';
import 'package:onboardingscreen/introscreens/intropg3';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            intropg1(),
            intropg2(),
            intropg3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                       _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                    },
                    child: Text('NEXT')),
                SmoothPageIndicator(controller: _controller, count: 3),
                Text('SKIP'),
              ],
            )),
      ],
    ));
  }
}
