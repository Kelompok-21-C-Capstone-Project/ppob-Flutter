import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'ovo_screen.dart';

class DaftarProdukEWalletScreen extends StatelessWidget {
  const DaftarProdukEWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Topup E-Wallet",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 14,
          crossAxisSpacing: 10,
          children: List.generate(
            produks.length,
            (index) {
              return CardItem(
                produk: produks[index],
                currentIndex: index,
              );
            },
          ),
        ),
      ),
    );
  }
}

class Produk {
  final String title;
  final String img;
  const Produk({required this.title, required this.img});
}

List<Produk> produks = <Produk>[
  Produk(title: 'E-Wallet', img: "assets/images/brizzi.png"),
  Produk(title: 'Link Aja', img: "assets/images/link.png"),
  Produk(title: 'ShopeePay', img: "assets/images/shopeePay.png"),
  Produk(title: 'DANA', img: "assets/images/dana.png"),
  Produk(title: 'Go-Pay', img: "assets/images/gopay.png"),
  Produk(title: 'OVO', img: "assets/images/ovo.png"),
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
        const SizedBox(height: 20),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: putih,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => _screen[currentIndex]),
                  );
                },
                child: Image.asset(
                  "${produk.img}",
                  width: 29,
                  height: 29,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 11),
        Text(
          "${produk.title}",
          style: title3Sans,
        ),
      ],
    );
  }
}
