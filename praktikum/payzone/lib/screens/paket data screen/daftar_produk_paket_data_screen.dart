import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone/components/constant.dart';

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
              "Pilih Nominal Voucher : OVO",
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
                      produksOvo.length,
                      (index) {
                        return Center(
                          child: CardItemOVO(produkOvo: produksOvo[index]),
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

List<ProdukOVO> produksOvo = <ProdukOVO>[
  ProdukOVO(title: "OVO 20", harga: "Rp. 21.500"),
  ProdukOVO(title: "OVO 25", harga: "Rp. 26.500"),
  ProdukOVO(title: "OVO 40", harga: "Rp. 41.500"),
  ProdukOVO(title: "OVO 50", harga: "Rp. 51.500"),
  ProdukOVO(title: "OVO 100", harga: "Rp. 101.500"),
  ProdukOVO(title: "OVO 200", harga: "Rp. 201.500"),
];

class ProdukOVO {
  final String title;
  final String harga;
  const ProdukOVO({required this.title, required this.harga});
}

class CardItemOVO extends StatelessWidget {
  const CardItemOVO({Key? key, required this.produkOvo}) : super(key: key);
  final ProdukOVO produkOvo;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 150,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${produkOvo.title}",
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
                "${produkOvo.harga}",
                style: title2Ubuntu,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
