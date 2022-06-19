import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';
import 'package:home_page/screens/paket%20data%20screens/daftar_produk_paket_data_screens.dart';
import 'package:home_page/screens/pdam%20screen/daftar_produk_pdam_screen.dart';

import 'e-wallet screens/daftar_produk_e_wallet_screen.dart';

class DaftarProdukScreen extends StatefulWidget {
  const DaftarProdukScreen({Key? key}) : super(key: key);

  @override
  State<DaftarProdukScreen> createState() => _DaftarProdukScreenState();
}

class _DaftarProdukScreenState extends State<DaftarProdukScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                // height: size.height * 0.25,
                height: 150,
                decoration: BoxDecoration(color: primaryKuning1),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Positioned(
                left: 24,
                right: 24,
                top: 32,
                child: Container(
                  // alignment: Alignment.center,
                  // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  margin: EdgeInsets.all(20),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: List.generate(
                      produks.length,
                      (index) {
                        return Center(
                          child: CardItem(
                            produk: produks[index],
                            currentIndex: index,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [_buildPromo(), _buildHistory()],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPromo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Promo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              fontFamily: GoogleFonts.ptSans().fontFamily,
            )),
        Container(
          margin: const EdgeInsets.all(15),
          child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, id) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    // child: Image.network(
                    //   "",
                    //   width: double.infinity,
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              // enlargeCenterPage: true,
              height: 200,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 5.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Transaksi Terakhir",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              fontFamily: GoogleFonts.ptSans().fontFamily,
            )),
      ],
    );
  }
}

class Produk {
  final String title;
  final IconData icon;
  const Produk({required this.title, required this.icon});
}

List<Produk> produks = <Produk>[
  Produk(title: 'E-Wallet', icon: Icons.account_balance_wallet),
  Produk(title: 'PDAM', icon: Icons.water_drop),
  Produk(title: 'Paket Data', icon: Icons.network_cell),
  Produk(title: 'Pulsa', icon: Icons.phone),
  Produk(title: 'PLN', icon: Icons.storm),
  Produk(title: 'Internet dan Tv Kabel', icon: Icons.cable),
];

class CardItem extends StatelessWidget {
  CardItem({Key? key, required this.produk, required this.currentIndex})
      : super(key: key);
  final Produk produk;

  final int currentIndex;
  final _screen = [
    DaftarProdukEWalletScreen(),
    DaftarProdukPdamScreen(),
    DaftarProdukPaketDataScreens()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: primaryKuning1,
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _screen[currentIndex]),
                    );
                  },
                  child: Icon(produk.icon, size: 30, color: onPrimary))
            ],
          ),
        ),
        Text(
          "${produk.title}",
          style: TextStyle(
              fontSize: 10,
              fontFamily: GoogleFonts.ptSans().fontFamily,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
