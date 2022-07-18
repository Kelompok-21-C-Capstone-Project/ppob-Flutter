import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class DaftarProdukTvkabel extends StatelessWidget {
  const DaftarProdukTvkabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Tagihan TV Kabel", style: appBar),
        centerTitle: true,
      ),
    );
  }
}
