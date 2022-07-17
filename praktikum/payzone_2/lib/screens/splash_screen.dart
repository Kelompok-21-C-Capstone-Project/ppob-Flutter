import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   // mengatur waktu untuk membuka halaman baru
  //   Future.delayed(const Duration(seconds: 5), () {
  //     Navigator.pushNamed(context, "/login");
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset("assets/images/splash1.png"),
        splashIconSize: 100,
        duration: 3000,
        animationDuration: const Duration(seconds: 1),
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: primaryKuning1,
      ),
    );
  }
}
