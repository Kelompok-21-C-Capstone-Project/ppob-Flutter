import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class KebijakandanPrivacy extends StatelessWidget {
  const KebijakandanPrivacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Kebijakan dan Privacy", style: appBar),
        centerTitle: true,
      ),
    );
  }
}
