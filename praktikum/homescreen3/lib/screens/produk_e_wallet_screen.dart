import 'package:flutter/material.dart';

class ProdukEWalletScreen extends StatefulWidget {
  const ProdukEWalletScreen({Key? key}) : super(key: key);

  @override
  State<ProdukEWalletScreen> createState() => _ProdukEWalletScreenState();
}

class _ProdukEWalletScreenState extends State<ProdukEWalletScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Top Up E-Wallet",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // Container(
              //   // height: size.height * 0.25,
              //   height: 200,
              //   decoration: BoxDecoration(color: Colors.grey),
              // ),

              // dicode sebelumnya dibungkus menggunakan Expanded
              Container(
                decoration: BoxDecoration(color: Colors.purple),
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
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(
                  produks.length,
                  (index) {
                    return Center(
                      child: CardItem(produk: produks[index]),
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
