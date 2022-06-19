import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaketDataScreen extends StatefulWidget {
  const PaketDataScreen({Key? key}) : super(key: key);

  @override
  State<PaketDataScreen> createState() => _PaketDataScreenState();
}

class _PaketDataScreenState extends State<PaketDataScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paket Data",
          style: Theme.of(context).textTheme.caption!.copyWith(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
                  decoration: BoxDecoration(color: Colors.white),
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
                Container(
                  decoration: BoxDecoration(color: Colors.white),
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
                                color: Colors.white,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  // crossAxisSpacing: 5,
                                  // mainAxisSpacing: 5,
                                  children: List.generate(
                                    produksPaketData.length,
                                    (index) {
                                      return Center(
                                        child: CardItemPaketData(
                                            produkPaketData:
                                                produksPaketData[index]),
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

      // body: SingleChildScrollView(
      //   padding: EdgeInsets.all(10),
      //   child: Stack(
      //     children: [
      //       Column(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(color: Colors.white),
      //             padding: EdgeInsets.all(10),
      //             margin: EdgeInsets.all(20),
      //             height: 100,
      //             width: 500,
      //             child: Form(
      //               key: formKey,
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   SizedBox(height: 10),
      //                   Text("Nomor Handphone"),
      //                   TextField(
      //                     controller: inputNomorHp,
      //                     decoration: InputDecoration(
      //                       hintText: "08xxxx",
      //                     ),
      //                     keyboardType: TextInputType.number,
      //                     inputFormatters: <TextInputFormatter>[
      //                       FilteringTextInputFormatter.digitsOnly,
      //                       // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      //                     ],
      //                   ),
      //                   SizedBox(height: 5),
      //                   Container(
      //                     decoration: BoxDecoration(color: Colors.amber),
      //                     padding: EdgeInsets.all(10),
      //                     margin: EdgeInsets.all(20),
      //                     height: 500,
      //                     width: 500,
      //                     //column ini column kelebihan pixel 7.0
      //                     child: SingleChildScrollView(
      //                       child: Column(
      //                         mainAxisSize: MainAxisSize.max,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             "Pilih Nominal Voucher : Logo",
      //                             style: TextStyle(
      //                               color: Colors.black,
      //                             ),
      //                           ),
      //                           SizedBox(height: 5),
      //                           Divider(
      //                             color: Colors.grey,
      //                             // height: 20,
      //                             thickness: 1,
      //                           ),

      //                           // sebelumnya disini container
      //                           Column(
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               //nanti coba tampili paket nya dengan menggunakan grid videw dan return menggunakan container
      //                               // hardcode data yang ingin ditampilkan seperti class produk

      //                               Container(
      //                                 margin: EdgeInsets.all(20),
      //                                 height: 400,
      //                                 width: 400,
      //                                 decoration: BoxDecoration(
      //                                   color: Colors.black,
      //                                 ),
      //                                 child: GridView.count(
      //                                   crossAxisCount: 2,
      //                                   // crossAxisSpacing: 5,
      //                                   // mainAxisSpacing: 5,
      //                                   children: List.generate(
      //                                     produksPaketData.length,
      //                                     (index) {
      //                                       return Center(
      //                                         child: CardItemPaketData(
      //                                             produkPaketData:
      //                                                 produksPaketData[index]),
      //                                       );
      //                                       // return Container(
      //                                       //   child: Column(
      //                                       //     children: [
      //                                       //       Text("OVO 20"),
      //                                       //       Divider(
      //                                       //         color: Colors.grey,
      //                                       //       ),
      //                                       //       Text("Harga"),
      //                                       //       Text("Rp. 20.000"),
      //                                       //     ],
      //                                       //   ),
      //                                       // );
      //                                     },
      //                                   ),
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

class ProdukPaketData {
  final String title;
  final String harga;
  const ProdukPaketData({required this.title, required this.harga});
}

List<ProdukPaketData> produksPaketData = <ProdukPaketData>[
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 11.500"),
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 31.500"),
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 51.500"),
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 51.500"),
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 71.500"),
  ProdukPaketData(title: "Nama Paket", harga: "Rp. 71.500"),
];

class CardItemPaketData extends StatelessWidget {
  const CardItemPaketData({Key? key, required this.produkPaketData})
      : super(key: key);
  final ProdukPaketData produkPaketData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 120,
          width: 140,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${produkPaketData.title}"),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text("Harga"),
              Text("${produkPaketData.harga}"),
              SizedBox(height: 10),
              Text("Selengkapnya")
            ],
          ),
        ),
      ],
    );
  }
}
