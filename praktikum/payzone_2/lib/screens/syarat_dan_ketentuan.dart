import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class SyaratdanKetentuan extends StatelessWidget {
  const SyaratdanKetentuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Syarat dan Ketentuan", style: appBar),
        centerTitle: true,
      ),
    );
  }
}
