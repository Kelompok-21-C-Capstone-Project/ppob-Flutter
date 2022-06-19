import 'package:flutter/material.dart';
import 'package:payzone/screens/daftar_produk_screens.dart';
import 'package:payzone/screens/e_wallet_screen/daftar_produk_e_wallet_screen.dart';
import 'package:payzone/screens/e_wallet_screen/metode_pembayaran_screen.dart';
import 'package:payzone/screens/e_wallet_screen/ovo_screen.dart';
import 'package:payzone/screens/e_wallet_screen/pembayaran_e_wallet_screen.dart';
import 'package:payzone/screens/history_screen.dart';
import 'package:payzone/screens/home_page_screens.dart';
import 'package:payzone/screens/paket%20data%20screen/daftar_produk_paket_data_screen.dart';
import 'package:payzone/screens/paket%20data%20screen/metode_pembayaran_paket_data_screen.dart';
import 'package:payzone/screens/paket%20data%20screen/pembayaran_paket_data_screen.dart';
import 'package:payzone/screens/pdam%20screen/daftar_produk_pdam_screen.dart';
import 'package:payzone/screens/pdam%20screen/metode_pembayaran_pdam_screen.dart';
import 'package:payzone/screens/pdam%20screen/pembayaran_pdam_screen.dart';
import 'package:payzone/screens/profile_detail_screen.dart';
import 'package:payzone/screens/profile_screens.dart';

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
        "/pembayaranPaketData": (context) => PembayaranPaketDataScreen(),
        "/pembayaranPdam": (context) => PembayaranPdamScreen(),
        "/produkPDAM": (context) => DaftarProdukPdamScreen(),
        "/produkPaketData": (context) => DaftarProdukPaketDataScreen(),
        "/metodePembayaranPDAM": (context) => MetodePembayaranPdamScreen(),
        "/metodePembayaranPaketData": (context) =>
            MetodePembayaranPaketDataScreen(),
        "/profile": (context) => ProfileScreen(),
        "/profileDetail": (context) => ProfileDetail(),
        "/history": (context) => HistoryScreen(),
      },
      initialRoute: "/home",
    );
  }
}
