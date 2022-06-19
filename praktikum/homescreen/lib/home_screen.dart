import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homescreen/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: SvgPicture.asset("assets/icon/menu.svg"),
        // ),
      ),
      body: Body(),
    );
  }
}
