import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboardingscreen/onboardingscreen.dart';
import 'package:page_transition/page_transition.dart';



class MyAppa extends StatelessWidget {
  const MyAppa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': ((context) => SplashScreen()),
        
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          ///TODO Add your image under assets folder
          Image.asset('assets/leftovergo_bg.png'),
        ],
      ),
      backgroundColor: Color(0xFFf9f0f0),
      nextScreen: onboardingScreen(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}