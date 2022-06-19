import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OVOScreen extends StatefulWidget {
  const OVOScreen({Key? key}) : super(key: key);

  @override
  State<OVOScreen> createState() => _OVOScreenState();
}

class _OVOScreenState extends State<OVOScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "OVO",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 500,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text("Nomor Handphone"),
                        TextFormField(
                          controller: inputNomorHp,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.cancel),
                            hintText: "08xxxxxxxxxx",
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Container yang menampung opsi Voucher
                Container(
                  decoration: BoxDecoration(color: Colors.purple),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 500,
                  width: 500,
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Pilih Nominal Voucher : OVO",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Divider(
                          color: Colors.grey,
                          // height: 20,
                          thickness: 1,
                        ),

                        // sebelumnya disini container
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            //nanti coba tampili paket nya dengan menggunakan grid videw dan return menggunakan container
                            // hardcode data yang ingin ditampilkan seperti class produk

                            Container(
                              margin: EdgeInsets.all(20),
                              height: 400,
                              width: 400,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                              ),
                              child: GridView.count(
                                crossAxisCount: 2,
                                // crossAxisSpacing: 5,
                                // mainAxisSpacing: 5,
                                children: List.generate(
                                  produksOvo.length,
                                  (index) {
                                    return Center(
                                      child: CardItemOVO(
                                          produkOvo: produksOvo[index]),
                                    );
                                    // return Container(
                                    //   child: Column(
                                    //     children: [
                                    //       Text("OVO 20"),
                                    //       Divider(
                                    //         color: Colors.grey,
                                    //       ),
                                    //       Text("Harga"),
                                    //       Text("Rp. 20.000"),
                                    //     ],
                                    //   ),
                                    // );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _lamanPromosi() {
    return Column(
      children: [
        Text("Keuntungan Bertansaksi Online di Payzone",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Text(
            "Tentang, Kelebihan, Penggunaan, Cara Isi Saldo, Cara Cek Saldo, OVO"),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
      ],
    );
  }
}

class ProdukOVO {
  final String title;
  final String harga;
  const ProdukOVO({required this.title, required this.harga});
}

List<ProdukOVO> produksOvo = <ProdukOVO>[
  ProdukOVO(title: "OVO 20", harga: "Rp. 21.500"),
  ProdukOVO(title: "OVO 25", harga: "Rp. 26.500"),
  ProdukOVO(title: "OVO 40", harga: "Rp. 41.500"),
  ProdukOVO(title: "OVO 50", harga: "Rp. 51.500"),
  ProdukOVO(title: "OVO 100", harga: "Rp. 101.500"),
  ProdukOVO(title: "OVO 200", harga: "Rp. 201.500"),
];

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
          height: 100,
          width: 140,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${produkOvo.title}"),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const Text("Harga"),
              Text("${produkOvo.harga}"),
            ],
          ),
        ),
      ],
    );
  }
}
