import 'package:flutter/material.dart';
import 'package:homescreen3/screens/components/body.dart';
import 'package:homescreen3/screens/components/produk.dart';
import 'package:homescreen3/screens/components/promo.dart';
import 'package:homescreen3/screens/home_screen.dart';
import 'package:homescreen3/screens/ovo_screen.dart';
import 'package:homescreen3/screens/paket_data_screen.dart';
import 'package:homescreen3/screens/pemabayarn_pdam.dart';
import 'package:homescreen3/screens/pembayaran_e_wallet.dart';
import 'package:homescreen3/screens/produk_e_wallet_screen.dart';
import 'package:homescreen3/screens/tagihan_pdam_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: {
        "/home": (context) => HomeScreen(),
        "/produkEWallet": (context) => ProdukEWalletScreen(),
        "/produk": (context) => ProdukScreen(),
        "/body": (context) => Body(),
        "/ovo": (context) => OVOScreen(),
        "/paketData": (context) => PaketDataScreen(),
        "/promo": (context) => Promo(),
        "/pembayaranPDAM": (context) => PembayaranPDAMScreen(),
        "/pembayaranEWallet": (context) => PembayaranEWalletScreen(),
        "/tagihanPDAM": (context) => TagihanPDAMScreen(),
        // "/login":(context) => LoginScreen(),
        // "/register":(context) => RegisterScreen(),
      },
      initialRoute: "/tagihanPDAM",
    );
  }
}
