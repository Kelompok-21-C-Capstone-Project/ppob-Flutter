import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login_screen.dart';
import 'package:login/register_screen.dart';
import 'package:login/user_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Home(),
        "/login": (context) => LoginScreen(),
        "/regis": (context) => RegisterScreen(),
        "/prof": (context) => UserProfileScreenScreen(),
      },
      initialRoute: "/regis",
    );
  }
}
