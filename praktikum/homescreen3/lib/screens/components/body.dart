import 'package:flutter/material.dart';
import 'package:homescreen3/screens/components/produk.dart';
import 'package:homescreen3/screens/components/promo.dart';
import 'package:homescreen3/screens/home_screen.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
// google : BUngkus listview pakai flexible / expanded, coba kasih ukuran
      body: ListView(
        // shrinkWrap: true,
        children: [ProdukScreen(), Promo()],
      ),
    );
  }
}
