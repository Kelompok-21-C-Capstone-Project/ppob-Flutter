import 'package:flutter/material.dart';
import 'package:home_page/constant.dart';
import 'package:home_page/screens/daftar_produk_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: primaryKuning1,
          title: const Text(
            "Payzone",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )),
      body: DaftarProdukScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryKuning1,
        unselectedItemColor: onSurface,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
          ),
        ],
        onTap: (index) {
          switch (index) {
            // case 0:
            //   Navigator.pushReplacement(context,
            //       MaterialPageRoute(builder: (context) => ProdukScreen()));
            //   break;
            // case 1:
            //   Navigator.pushReplacement(context,
            //       MaterialPageRoute(builder: (context) => ProdukScreen()));
            //   break;
            // case 2:
            //   Navigator.pushReplacement(context,
            //       MaterialPageRoute(builder: (context) => ProdukScreen()));
            // default:
          }
        },
      ),
    );
  }
}
