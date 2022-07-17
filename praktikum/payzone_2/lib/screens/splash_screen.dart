import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/login_screen.dart';

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
      body: Center(
        child: AnimatedSplashScreen(
          splash: Image.asset("assets/images/splash1.png"),
          duration: 3000,
          animationDuration: Duration(seconds: 2),
          nextScreen: LoginScreen(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: primaryKuning1,
        ),
      ),
    );
  }
}
