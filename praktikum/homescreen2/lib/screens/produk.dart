import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Produk {
//   IconData image;
//   String? nama;

//   Produk({required this.image, this.nama});
// }

// List<Produk> produkList = [
//   Produk(image: Icons.account_balance_wallet, nama: "E-Wallet"),
//   Produk(image: Icons.water_drop, nama: "PDAM"),
//   Produk(image: Icons.network_cell, nama: "Paket Data"),
//   Produk(image: Icons.phone, nama: "Pulsa"),
//   Produk(image: Icons.storm, nama: "PLN"),
//   Produk(image: Icons.cable, nama: "Internet dan Tv Kabel"),
// ];

class Produk {
  Produk({required this.icon});
  IconData icon;
}

List<Produk> produks = [
  Produk(icon: Icons.account_balance_wallet),
  Produk(icon: Icons.water_drop),
  Produk(icon: Icons.network_cell),
  Produk(icon: Icons.phone),
  Produk(icon: Icons.storm),
  Produk(icon: Icons.cable),
];
