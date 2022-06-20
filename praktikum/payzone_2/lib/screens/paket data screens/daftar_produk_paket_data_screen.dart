import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/paket%20data%20screens/pembayaran_paket_data_screen.dart';

class DaftarProdukPaketDataScreen extends StatefulWidget {
  const DaftarProdukPaketDataScreen({Key? key}) : super(key: key);

  @override
  State<DaftarProdukPaketDataScreen> createState() =>
      _DaftarProdukPaketDataScreenState();
}

class _DaftarProdukPaketDataScreenState
    extends State<DaftarProdukPaketDataScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        title: Text(
          "Paket Data",
          style: appBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: putih),
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
                ),
                _buildPaket(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPaket() {
// Container yang menampung opsi Voucher
    return Container(
      decoration: BoxDecoration(color: putih),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      height: 480,
      width: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Nominal Voucher : Telkomsel",
              style: title2Sans,
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            // sebelumnya disini container
            Column(
              children: [
                Container(
                  height: 400,
                  width: 4500,
                  decoration: BoxDecoration(color: putih),
                  child: GridView.count(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 5,
                    // mainAxisSpacing: 5,
                    children: List.generate(
                      produksTelkomsels.length,
                      (index) {
                        return Center(
                          child: CardItemTelkomsel(
                            produkTelkomsel: produksTelkomsels[index],
                            currentIndex: index,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<ProdukTelkomsel> produksTelkomsels = <ProdukTelkomsel>[
  ProdukTelkomsel(title: "Telkomsel 20", harga: "Rp. 21.500"),
  ProdukTelkomsel(title: "Telkomsel 25", harga: "Rp. 26.500"),
  ProdukTelkomsel(title: "Telkomsel 40", harga: "Rp. 41.500"),
  ProdukTelkomsel(title: "Telkomsel 50", harga: "Rp. 51.500"),
  ProdukTelkomsel(title: "Telkomsel 100", harga: "Rp. 101.500"),
  ProdukTelkomsel(title: "Telkomsel 200", harga: "Rp. 201.500"),
];

class ProdukTelkomsel {
  final String title;
  final String harga;
  const ProdukTelkomsel({required this.title, required this.harga});
}

class CardItemTelkomsel extends StatelessWidget {
  const CardItemTelkomsel(
      {Key? key, required this.produkTelkomsel, required this.currentIndex})
      : super(key: key);
  final ProdukTelkomsel produkTelkomsel;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PembayaranPaketDataScreen(),
                ));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${produkTelkomsel.title}",
                  style: title1Ubuntu,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Text(
                  "Harga",
                  style: title1Sans,
                ),
                Text(
                  "${produkTelkomsel.harga}",
                  style: title2Ubuntu,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
