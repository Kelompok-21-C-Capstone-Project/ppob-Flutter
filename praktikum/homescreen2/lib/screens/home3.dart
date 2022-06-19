import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  // height: size.height * 0.25,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.grey),
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
            Positioned(
              left: 30,
              right: 30,
              top: 20,
              child: Container(
                // alignment: Alignment.center,
                // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                margin: EdgeInsets.all(20),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(produks.length, (index) {
                    return Center(
                      child: CardItem(produk: produks[index]),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromo() {
    return Container(
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
          enlargeCenterPage: true,
          height: 200,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
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
  Produk(title: 'E-Wallet', icon: Icons.account_balance_wallet),
  Produk(title: 'PDAM', icon: Icons.water_drop),
  Produk(title: 'Paket Data', icon: Icons.network_cell),
  Produk(title: 'Pulsa', icon: Icons.phone),
  Produk(title: 'PLN', icon: Icons.storm),
  Produk(title: 'Internet dan Tv Kabel', icon: Icons.cable),
];

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.produk}) : super(key: key);
  final Produk produk;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.grey[200],
          child: Column(
            children: [Icon(produk.icon, size: 30, color: Colors.grey)],
          ),
        ),
        Text("${produk.title}"),
      ],
    );
  }
}
