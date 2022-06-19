import 'package:flutter/material.dart';
import 'package:home_page/screens/e-wallet%20screens/daftar_produk_e_wallet_screen.dart';
import 'package:home_page/screens/daftar_produk_screen.dart';
import 'package:home_page/screens/e-wallet%20screens/metode_pembayaran_screen.dart';
import 'package:home_page/screens/e-wallet%20screens/ovo_screen.dart';
import 'package:home_page/screens/e-wallet%20screens/pembayaran_e_wallet_screen.dart';
import 'package:home_page/screens/history_screen.dart';
import 'package:home_page/screens/home_page_screen.dart';
import 'package:home_page/screens/paket%20data%20screens/daftar_produk_paket_data_screens.dart';
import 'package:home_page/screens/paket%20data%20screens/metode_pembayaran_paket_data_screen.dart';
import 'package:home_page/screens/paket%20data%20screens/pembayaran_paket_data_screen.dart';
import 'package:home_page/screens/pdam%20screen/daftar_produk_pdam_screen.dart';
import 'package:home_page/screens/pdam%20screen/metode_pembayaran_pdam_screen.dart';
import 'package:home_page/screens/pdam%20screen/pembayaran_pdam_screen.dart';
import 'package:home_page/screens/profile_detail_screen.dart';
import 'package:home_page/screens/profile_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page Demo',
      // theme: ThemeData(
      //   primarySwatch: primaryKuning1,
      // ),
      routes: {
        "/home": (context) => HomePageScreen(),
        "/daftarProduk": (context) => DaftarProdukScreen(),
        "/produkEWallet": (context) => DaftarProdukEWalletScreen(),
        "/ovoScreen": (context) => OVOScreen(),
        "/pembayaranEWallet": (context) => PembayaranEWalletScreen(),
        "/pembayaranPaketData": (context) => PembayaranPaketDataScreen(),
        "/pembayaranPdam": (context) => PembayaranPDAMScreen(),
        "/produkPDAM": (context) => DaftarProdukPdamScreen(),
        "/produkPaketData": (context) => DaftarProdukPaketDataScreens(),
        "/metodePembayaranEWallet": (context) => MetodePembayaranScreen(),
        "/metodePembayaranPDAM": (context) => MetodePembayaranPDAMScreen(),
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
