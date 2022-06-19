import 'package:flutter/material.dart';

class TopUpEWalletScreen extends StatefulWidget {
  const TopUpEWalletScreen({Key? key}) : super(key: key);

  @override
  State<TopUpEWalletScreen> createState() => _TopUpEWalletScreenState();
}

class _TopUpEWalletScreenState extends State<TopUpEWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Up E-Wallet"),
      ),
    );
  }
}
