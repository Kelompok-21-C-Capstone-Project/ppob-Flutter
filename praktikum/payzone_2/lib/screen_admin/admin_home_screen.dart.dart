import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screen_admin/admin%20daftar%20pelanggan/admin_daftar_pelanggan_screen.dart';
import 'package:payzone_2/screen_admin/admin%20laporan%20screen/admin_laporan_screen.dart';
import 'package:payzone_2/screen_admin/admin%20produk%20screen/admin_produk_screen.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: primaryKuning1,
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.fill,
          height: 39,
          width: 75,
        ),
        actions: [
          Icon(
            Icons.settings,
            color: onPrimary,
            size: 14,
          )
        ],
      ),
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
            left: 24,
            right: 24,
            top: 32,
            child: Container(
              padding: const EdgeInsets.all(26),
              height: 174,
              width: 312,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5)
                  ]),
              child: Column(
                children: [
                  Text(
                    "Periode Harian",
                    style: title10Sans,
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.grey[200]),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Penjualan",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Laba Bersih",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Penerimaan",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Divider(color: Colors.grey[200]),
                  const SizedBox(height: 6),
                  Text(
                    "Selengkapnya",
                    style: title12Sans,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 238,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 31, bottom: 31, right: 25, left: 25),
              height: 217,
              width: 312,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(4),
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
          )
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
  Produk(title: 'Laporan', icon: Icons.document_scanner_outlined),
  Produk(title: 'Produk', icon: Icons.water_drop),
  Produk(title: 'Customer', icon: Icons.network_cell),
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
    AdminLaporanScreen(),
    AdminProdukScreen(),
    AdminDaftarPelangganScreen(),
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
