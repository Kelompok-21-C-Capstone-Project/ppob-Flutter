import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/paket%20data%20screens/daftar_produk_paket_data_screen.dart';
import 'package:payzone_2/screens/pdam%20screens/daftar_produk_pdam_screen.dart';
import 'e-wallet screens/daftar_produk_e_wallet_screen.dart';

class DaftarProdukScreens extends StatefulWidget {
  const DaftarProdukScreens({Key? key}) : super(key: key);

  @override
  State<DaftarProdukScreens> createState() => _DaftarProdukScreensState();
}

class _DaftarProdukScreensState extends State<DaftarProdukScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
          backgroundColor: primaryKuning1,
          // title: Text(
          //   "Payzone",
          //   style: appBar,
          // ),
          title: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fill,
            height: 39,
            width: 75,
          )),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 144,
                width: 360,
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
          Positioned(
            left: 5,
            right: 5,
            top: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 217,
              width: 312,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(10),
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
          Positioned(
            left: 24,
            right: 24,
            top: 270,
            child: Column(
              children: [
                _buildPromo(),
                _buildHistory(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Promo", style: title10Sans),
        const SizedBox(height: 15),
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
                      border: Border.all(color: putih),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      // child: Image.asset("assets/images/bca.png")),
                    ),
                  ));
            },
            options: CarouselOptions(
              // enlargeCenterPage: true,
              height: 155,
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
        Text("Transaksi Terakhir", style: title10Sans),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/historyDetail");
          },
          child: Container(
            height: 98,
            width: 312,
            decoration: BoxDecoration(
                color: putih,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 3)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                      color: primaryKuning1,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 2)
                      ]),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 25,
                    color: onPrimary,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7),
                    Container(
                      width: 61,
                      height: 21,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: variant),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Selesai",
                        style: selesai,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text("30/MEI/2022  19.40 WIB", style: title3Sans),
                    Text("OVO 20.000 (08313298343)", style: title11Sans),
                    Text("Order ID : Payzone_71203829", style: title3Sans),
                    Text("Rp. 21.500", style: title11Sans),
                  ],
                ),
              ],
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
  Produk(title: 'E-Wallet', icon: Icons.account_balance_wallet_outlined),
  Produk(title: 'PDAM', icon: Icons.water_drop),
  Produk(title: 'Paket Data', icon: Icons.network_cell),
  Produk(title: 'Pulsa', icon: Icons.smartphone),
  Produk(title: 'PLN', icon: Icons.storm),
  Produk(title: 'Internet dan TV Kabel', icon: Icons.tv),
];

class CardItem extends StatelessWidget {
  CardItem({Key? key, required this.produk, required this.currentIndex})
      : super(key: key);
  final Produk produk;
  final int currentIndex;
  final _screen = [
    DaftarProdukEWalletScreen(),
    DaftarProdukPdamScreen(),
    DaftarProdukPaketDataScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: primaryKuning1,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _screen[currentIndex]),
                    );
                  },
                  child: Icon(produk.icon, size: 25, color: onPrimary))
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
