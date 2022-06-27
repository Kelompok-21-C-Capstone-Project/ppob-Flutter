import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/history_screen.dart';
import 'package:payzone_2/screens/profile_screens.dart';
import 'daftar_produk_screens.dart';

class HomePageScreens extends StatefulWidget {
  const HomePageScreens({Key? key}) : super(key: key);

  @override
  State<HomePageScreens> createState() => _HomePageScreensState();
}

class _HomePageScreensState extends State<HomePageScreens> {
  int _currentIndex = 0;

  final screen = [
    DaftarProdukScreens(),
    HistoryScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,

      body: screen[_currentIndex],
      // body: DaftarProdukScreens(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: primaryKuning1,
        // unselectedItemColor: onSurface,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            // backgroundColor: primaryKuning1,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
            // backgroundColor: primaryKuning1,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
            // backgroundColor: primaryKuning1,
          ),
        ],
        onTap: (index) {
          setState(() {
            //untuk set _current index urutan keberapa ke index yang ada
            _currentIndex = index;
          });
        },
        // onTap: (index) {
        //   switch (index) {
        //     case 0:
        //       Navigator.pushReplacement(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => DaftarProdukScreens()));
        //       break;
        //     case 1:
        //       Navigator.pushReplacement(context,
        //           MaterialPageRoute(builder: (context) => HistoryScreen()));
        //       break;
        //     case 2:
        //       Navigator.pushReplacement(context,
        //           MaterialPageRoute(builder: (context) => ProfileScreen()));
        //     // default:
        //   }
        // },
      ),
    );
  }
}
