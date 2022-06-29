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
        padding: const EdgeInsets.all(16),
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
                          decoration: InputDecoration(
                              hintStyle: title2Robo,
                              labelStyle: title1Robo,
                              labelText: "Nomor Handphone",
                              hintText: "08xxxx",
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
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
  const CardItemTelkomsel(
      {Key? key, required this.produkTelkomsel, required this.currentIndex})
      : super(key: key);
  final ProdukTelkomsel produkTelkomsel;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
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
            padding:
                const EdgeInsets.only(top: 32, left: 12, bottom: 32, right: 12),
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
                  "${produkTelkomsel.title}",
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
                  "${produkTelkomsel.harga}",
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
                                "Kuota utama 2GB, dapat digunakan di jaringan 2G/3G/4G dari jam 00.00-24.00 WIB, Kuota dapat digunakan untuk mengakses rumah belajar kemendikbud, spada indonesia kemendikbud, ruang guru, zenius, sekolahmu, dan website lembaga pendidikan dan universitas. Daftar website dan aplikasi lengkap cek www.xl.co.id, Masa aktif 1 hari",
                                style: title3Sans),
                            actions: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: primaryKuning1,
                                  padding:
                                      const EdgeInsets.fromLTRB(85, 12, 65, 12),
                                ),
                                child: Text("Lanjut ke Pembayaran",
                                    style: buttonText),
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
}
