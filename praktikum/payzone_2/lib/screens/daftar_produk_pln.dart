import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class DaftarProdukPln extends StatelessWidget {
  const DaftarProdukPln({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Tagihan PLN", style: appBar),
        centerTitle: true,
      ),
    );
  }
}
