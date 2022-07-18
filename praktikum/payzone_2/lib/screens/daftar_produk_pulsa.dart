import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class DaftarProdukPulsa extends StatelessWidget {
  const DaftarProdukPulsa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Daftar Pulsa", style: appBar),
        centerTitle: true,
      ),
    );
  }
}
