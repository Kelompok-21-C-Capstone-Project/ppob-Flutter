import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homescreen3/screens/components/promo.dart';
import 'package:homescreen3/screens/ovo_screen.dart';
import 'package:homescreen3/screens/paket_data_screen.dart';
import 'package:homescreen3/screens/pemabayarn_pdam.dart';
import 'package:homescreen3/screens/pembayaran_e_wallet.dart';
import 'package:homescreen3/screens/produk_e_wallet_screen.dart';

class ProdukScreen extends StatefulWidget {
  const ProdukScreen({Key? key}) : super(key: key);

  @override
  State<ProdukScreen> createState() => _ProdukScreenState();
}

class _ProdukScreenState extends State<ProdukScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    //scroll abel conatiner produk, promo, history
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                // height: size.height * 0.25,
                height: 150,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Positioned(
                left: 20,
                right: 20,
                top: 20,
                child: Container(
                  // alignment: Alignment.center,
                  // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  margin: EdgeInsets.all(20),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
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
        Text("Promo", style: TextStyle(fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.all(15),
          child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, id) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              // enlargeCenterPage: true,
              height: 200,
              autoPlayInterval: Duration(seconds: 3),
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
        Text("History", style: TextStyle(fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.all(15),
          child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, id) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              // enlargeCenterPage: true,
              height: 200,
              autoPlayInterval: Duration(seconds: 3),
              aspectRatio: 5.0,
            ),
          ),
        ),
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
  final _screen = [ProdukEWalletScreen(), PembayaranPDAMScreen(), Promo()];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.amber,
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
                  child: Icon(produk.icon, size: 30, color: Colors.grey))
            ],
          ),
        ),
        Text("${produk.title}"),
      ],
    );
  }
}
