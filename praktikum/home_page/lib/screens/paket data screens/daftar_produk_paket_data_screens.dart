import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';

class DaftarProdukPaketDataScreens extends StatefulWidget {
  const DaftarProdukPaketDataScreens({Key? key}) : super(key: key);

  @override
  State<DaftarProdukPaketDataScreens> createState() =>
      _DaftarProdukPaketDataScreensState();
}

class _DaftarProdukPaketDataScreensState
    extends State<DaftarProdukPaketDataScreens> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryKuning1,
        title: Text(
          "Paket Data",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontFamily: GoogleFonts.ptSans().fontFamily,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                height: 80,
                width: 600,
                child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Nomor Handphone",
                              hintText: "08xxxx",
                              suffixIcon: Icon(Icons.cancel),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          )
        ],
      )),
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
  final _screen = [];

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
                  child: Icon(produk.icon, size: 30, color: Colors.black))
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
