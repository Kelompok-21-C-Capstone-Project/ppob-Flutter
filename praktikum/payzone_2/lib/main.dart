import 'package:flutter/material.dart';
import 'package:payzone_2/screen_admin/admin%20laporan%20screen/admin_detail_penjualan_screen.dart';
import 'package:payzone_2/screen_admin/admin%20laporan%20screen/admin_penjualan_screen.dart';
import 'package:payzone_2/screen_admin/admin%20laporan%20screen/admin_stock_screen.dart';
import 'package:payzone_2/screen_admin/admin%20produk%20screen/admin_daftar_kategori_screen.dart';
import 'package:payzone_2/screen_admin/admin_home_screen.dart.dart';
import 'package:payzone_2/screen_admin/admin%20laporan%20screen/admin_laporan_screen.dart';
import 'package:payzone_2/screen_admin/admin%20produk%20screen/admin_produk_screen.dart';
import 'package:payzone_2/screens/daftar_produk_screens.dart';
import 'package:payzone_2/screens/e-wallet%20screens/daftar_produk_e_wallet_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/metode_pembayaran_e_wallet_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/ovo_screen.dart';
import 'package:payzone_2/screens/e-wallet%20screens/pembayaran_e_wallet_screen.dart';
import 'package:payzone_2/screens/history_detail_screen.dart';
import 'package:payzone_2/screens/history_screen.dart';
import 'package:payzone_2/screens/home_page_screens.dart';
import 'package:payzone_2/screens/login_screen.dart';
import 'package:payzone_2/screens/paket%20data%20screens/daftar_produk_paket_data_screen.dart';
import 'package:payzone_2/screens/paket%20data%20screens/metode_pembayaran_paket_data_screen.dart';
import 'package:payzone_2/screens/paket%20data%20screens/pembayaran_paket_data_screen.dart';
import 'package:payzone_2/screens/pdam%20screens/daftar_produk_pdam_screen.dart';
import 'package:payzone_2/screens/pdam%20screens/metode_pembayaran_pdam_screen.dart';
import 'package:payzone_2/screens/pdam%20screens/pembayaran_pdam_screen.dart';
import 'package:payzone_2/screens/profile_detail_screen.dart';
import 'package:payzone_2/screens/profile_screens.dart';
import 'package:payzone_2/screens/register_screen.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:payzone_2/view%20model/history_view_model.dart';
import 'package:payzone_2/view%20model/login_view_model.dart';
import 'package:payzone_2/view%20model/payzone_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PayzoneViewModel>(
            create: (context) => PayzoneViewModel()),
        ChangeNotifierProvider<LoginViewModel>(
            create: (context) => LoginViewModel()),
        ChangeNotifierProvider<DaftarProdukViewModel>(
            create: (context) => DaftarProdukViewModel()),
        ChangeNotifierProvider<HistoryViewModel>(
            create: (context) => HistoryViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Payzone',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        routes: {
          //user
          "/home": (context) => HomePageScreens(),
          "/daftarProduk": (context) => DaftarProdukScreens(),
          "/produkEWallet": (context) => DaftarProdukEWalletScreen(),
          "/ovoScreen": (context) => OVOScreen(),
          "/pembayaranEWallet": (context) => PembayaranEWalletScreen(),
          "/metodePembayaranEWallet": (context) => MetodePembayaranScreen(),
          "/produkPDAM": (context) => DaftarProdukPdamScreen(),
          "/pembayaranPdam": (context) => PembayaranPdamScreen(),
          "/metodePembayaranPDAM": (context) => MetodePembayaranPdamScreen(),
          "/produkPaketData": (context) => DaftarProdukPaketDataScreen(),
          "/pembayaranPaketData": (context) => PembayaranPaketDataScreen(),
          "/metodePembayaranPaketData": (context) =>
              MetodePembayaranPaketDataScreen(),
          "/profile": (context) => ProfileScreen(),
          "/profileDetail": (context) => ProfileDetail(),
          "/login": (context) => LoginScreen(),
          "registrasi": (context) => RegisterScreen(),
          "/history": (context) => HistoryScreen(),
          "/historyDetail": (context) => HistoryDetailScreen(),

          //admin
          "/adminHome": (context) => AdminHomeScreen(),
          "/adminLaporan": (context) => AdminLaporanScreen(),
          "/adminDetailPenjualan": (context) => AdminDetailPenjualanScreen(),
          "/adminPenjualan": (context) => AdminPenjualanScreen(),
          "/adminStock": (context) => AdminStockScreen(),
          "/adminProduk": (context) => AdminProdukScreen(),
          "/adminDaftarKategori": (context) => AdminDaftarKategori(),
        },
        initialRoute: "/history",
      ),
    );
  }
}
