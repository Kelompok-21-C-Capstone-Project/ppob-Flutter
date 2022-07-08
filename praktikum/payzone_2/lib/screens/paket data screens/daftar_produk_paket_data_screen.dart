import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/paket%20data%20screens/pembayaran_paket_data_screen.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:provider/provider.dart';

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
        padding: const EdgeInsets.all(24),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: inputNomorHp,
                          decoration: InputDecoration(
                              hintStyle: title2Robo,
                              labelStyle: title1Robo,
                              labelText: "Nomor Handphone",
                              hintText: "08xxxx",
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          // validator: (value) {
                          // if (value!.isEmpty) {
                          //   return "Nomor Handphone tidak boleh kosong";
                          // }
                          //   // if (value!.length != 12) {
                          //   //   return "phone number must be in 12 digit";
                          //   // }
                          // },
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            // LengthLimitingTextInputFormatter(12),
                            // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                        ),
                      ],
                    )),
                _buildPaket(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPaket() {
    // final result =
    //     Provider.of<DaftarProdukViewModel>(context).listProdukPaketData;
// Container yang menampung opsi Voucher
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 41),
          Text(
            "Pilih Nominal Voucher : Telkomsel",
            style: title10Sans,
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
                height: 550,
                width: 4600,
                decoration: BoxDecoration(color: putih),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 10,
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
  const CardItemTelkomsel({
    Key? key,
    required this.produkTelkomsel,
    required this.currentIndex,
  }) : super(key: key);
  final ProdukTelkomsel produkTelkomsel;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: Provider.of<DaftarProdukViewModel>(context, listen: false)
            .getAllDaftarProdukPaketData(),
        builder: (context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final result =
                Provider.of<DaftarProdukViewModel>(context).listProdukPaketData;

            return Column(
              // mainAxisAlignment: MainAxisAlignment.center,
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
                    padding: const EdgeInsets.only(
                        top: 32, left: 12, bottom: 32, right: 12),
                    height: 145,
                    width: 145,
                    decoration: BoxDecoration(
                        color: putih,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 1)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${result.products![currentIndex].label}",
                          // "${produkTelkomsel.title}",
                          style: title4Ubuntu,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Text(
                          "Harga",
                          style: title3Sans,
                        ),
                        Text(
                          "${result.products![currentIndex].price}",
                          // "${produkTelkomsel.harga}",
                          style: title5Ubuntu,
                        ),
                        const SizedBox(height: 5),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Detail Paket",
                                      style: title9Sans,
                                    ),
                                    content: Text(
                                      "deskripsi produk",
                                      style: title3Sans,
                                      textAlign: TextAlign.justify,
                                    ),
                                    actions: [
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryKuning1,
                                            padding: const EdgeInsets.fromLTRB(
                                                70, 12, 70, 12),
                                          ),
                                          child: Text("Lanjut ke Pembayaran",
                                              style: buttonText),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text(
                            "Selengkapnya",
                            style: title1Sans,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        });
  }
}
