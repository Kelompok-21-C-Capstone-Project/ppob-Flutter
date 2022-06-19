import 'package:flutter/material.dart';
import 'package:payzone_2/screens/daftar_produk_screens.dart';
import 'package:payzone_2/screens/e-wallet%20screens/daftar_produk_e_wallet_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/metode_pembayaran_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/ovo_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/pembayaran_e_wallet_screen.dart';
import 'package:payzone_2/screens/home_page_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payzone',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      routes: {
        "/home": (context) => HomePageScreens(),
        "/daftarProduk": (context) => DaftarProdukScreens(),
        "/produkEWallet": (context) => DaftarProdukEWalletScreen(),
        "/ovoScreen": (context) => OVOScreen(),
        "/pembayaranEWallet": (context) => PembayaranEWalletScreen(),
        "/metodePembayaranEWallet": (context) => MetodePembayaranScreen(),
      },
      initialRoute: "/metodePembayaranEWallet",
    );
  }
}
