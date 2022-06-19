import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';
import 'package:home_page/screens/e-wallet%20screens/ovo_screen.dart';

class DaftarProdukEWalletScreen extends StatelessWidget {
  const DaftarProdukEWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryKuning1,
        title: Text(
          "Topup E-Wallet",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontFamily: GoogleFonts.ptSans().fontFamily,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Positioned(
            left: 20,
            right: 20,
            top: 20,
            child: Container(
              // alignment: Alignment.center,
              // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              margin: const EdgeInsets.all(20),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(15),
                // boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
              ),
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
        ],
      ),
    );
  }
}

class Produk {
  final String title;
  final IconData icon;
  const Produk({required this.title, required this.icon});
}

List<Produk> produks = <Produk>[
  Produk(title: 'Brizzi', icon: Icons.account_balance_wallet),
  Produk(title: 'E-Money', icon: Icons.water_drop),
  Produk(title: 'Link Aja', icon: Icons.network_cell),
  Produk(title: 'DANA', icon: Icons.phone),
  Produk(title: 'Go-Pay', icon: Icons.storm),
  Produk(title: 'OVO', icon: Icons.cable),
];

class CardItem extends StatelessWidget {
  CardItem({Key? key, required this.produk, required this.currentIndex})
      : super(key: key);
  final Produk produk;

  final int currentIndex;
  final _screen = [OVOScreen()];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.white,
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
