import 'package:flutter/material.dart';
import 'package:homescreen2/screens/carousel_slider.dart';
import 'package:homescreen2/screens/home.dart';
import 'package:homescreen2/screens/home3.dart';
import 'package:homescreen2/screens/produk.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
// google : BUngkus listview pakai flexible / expanded, coba kasih ukuran
      body: ListView(
        // shrinkWrap: true,
        children: [Home3(), Promo()],
      ),
    );
  }
}
