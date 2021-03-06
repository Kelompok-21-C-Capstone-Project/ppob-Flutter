import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/paket%20data%20screens/pembayaran_paket_data_screen.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  late SharedPreferences logindata;

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<DaftarProdukViewModel>(context);
    return Scaffold(
        backgroundColor: putih,
        appBar: AppBar(
          backgroundColor: putih,
          title: Text(
            "Paket Data",
            style: appBar,
          ),
          centerTitle: true,
        ),
        body:
            // FutureBuilder<void>(
            //     future: viewModel.getAllDaftarProdukPaketData(),
            //     builder: (context, AsyncSnapshot<void> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       } else {
            //         final result = Provider.of<DaftarProdukViewModel>(context)
            //             .listProdukPaketData;
            //         return
            SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
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
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(12),
                        // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                  ],
                ),
              ),
              _buildPaket(context),
            ],
          ),
        ));
  }
}
//         ),
//   );
// }

Widget _buildPaket(context) {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  SharedPreferences logindata;
// Container yang menampung opsi Voucher
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
                Column(
                  children: [
                    Container(
                      height: 550,
                      width: 4600,
                      decoration: BoxDecoration(color: putih),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 14,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                              // onTap: () async {
                              //   final isValidForm =
                              //       formKey.currentState!.validate();
                              //   String nomor = inputNomorHp.text;

                              //   if (isValidForm) {
                              //     SharedPreferences sher =
                              //         await SharedPreferences.getInstance();
                              //     sher.setString("nomor", nomor);
                              //     Navigator.pushNamed(
                              //         context, "/pembayaranPaketData");

                              //     // Navigator.pushNamedAndRemoveUntil(context,
                              //     //     HomeScreen.route, (route) => false);
                              //   }
                              // },
                              onTap: () => Navigator.pushNamed(
                                  context, "/pembayaranPaketData"),
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) =>
                              //               PembayaranPaketDataScreen(
                              //                 paketId: result.id,
                              //               )));
                              // },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 32, left: 12, bottom: 32, right: 12),
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: putih,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 1)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${result.products![index].label}",
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
                                      "${result.products![index].price}",
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
                                                  "${result.products![index].description}",
                                                  style: title3Sans,
                                                  textAlign: TextAlign.justify,
                                                ),
                                                actions: [
                                                  Center(
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            "/pembayaranPaketData");
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: primaryKuning1,
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                70, 12, 70, 12),
                                                      ),
                                                      child: Text(
                                                          "Lanjut ke Pembayaran",
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
                              ));
                        },
                        itemCount: result.products!.length,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      });
}
// }

// List<ProdukTelkomsel> produksTelkomsels = <ProdukTelkomsel>[
//   ProdukTelkomsel(title: "Telkomsel 20", harga: "Rp. 21.500"),
//   ProdukTelkomsel(title: "Telkomsel 25", harga: "Rp. 26.500"),
//   ProdukTelkomsel(title: "Telkomsel 40", harga: "Rp. 41.500"),
//   ProdukTelkomsel(title: "Telkomsel 50", harga: "Rp. 51.500"),
//   ProdukTelkomsel(title: "Telkomsel 100", harga: "Rp. 101.500"),
//   ProdukTelkomsel(title: "Telkomsel 200", harga: "Rp. 201.500"),
// ];

// class ProdukTelkomsel {
//   final String title;
//   final String harga;
//   const ProdukTelkomsel({required this.title, required this.harga});
// }

// class CardItemTelkomsel extends StatelessWidget {
//   const CardItemTelkomsel({
//     Key? key,
//     required this.produkTelkomsel,
//     required this.currentIndex,
//   }) : super(key: key);
//   final ProdukTelkomsel produkTelkomsel;
//   final int currentIndex;

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<void>(
//         future: Provider.of<DaftarProdukViewModel>(context, listen: false)
//             .getAllDaftarProdukPaketData(),
//         builder: (context, AsyncSnapshot<void> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             final result =
//                 Provider.of<DaftarProdukViewModel>(context).listProdukPaketData;

//             return Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => PembayaranPaketDataScreen(),
//                         ));
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.only(
//                         top: 32, left: 12, bottom: 32, right: 12),
//                     height: 145,
//                     width: 145,
//                     decoration: BoxDecoration(
//                         color: putih,
//                         borderRadius: BorderRadius.circular(5),
//                         boxShadow: const [
//                           BoxShadow(color: Colors.grey, blurRadius: 1)
//                         ]),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "${result.products![currentIndex].label}",
//                           // "${produkTelkomsel.title}",
//                           style: title4Ubuntu,
//                         ),
//                         const Divider(
//                           color: Colors.grey,
//                           thickness: 1,
//                         ),
//                         Text(
//                           "Harga",
//                           style: title3Sans,
//                         ),
//                         Text(
//                           "${result.products![currentIndex].price}",
//                           // "${produkTelkomsel.harga}",
//                           style: title5Ubuntu,
//                         ),
//                         const SizedBox(height: 5),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder: (context) {
//                                   return AlertDialog(
//                                     title: Text(
//                                       "Detail Paket",
//                                       style: title9Sans,
//                                     ),
//                                     content: Text(
//                                       "deskripsi produk",
//                                       style: title3Sans,
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     actions: [
//                                       Center(
//                                         child: ElevatedButton(
//                                           onPressed: () {},
//                                           style: ElevatedButton.styleFrom(
//                                             primary: primaryKuning1,
//                                             padding: const EdgeInsets.fromLTRB(
//                                                 70, 12, 70, 12),
//                                           ),
//                                           child: Text("Lanjut ke Pembayaran",
//                                               style: buttonText),
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 });
//                           },
//                           child: Text(
//                             "Selengkapnya",
//                             style: title1Sans,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           }
//         });
//   }
// }

// child: GridView.count(
//   crossAxisCount: 2,
//   mainAxisSpacing: 14,
//   crossAxisSpacing: 10,
//   children: List.generate(
//     produksTelkomsels.length,
//     (index) {
//       return Center(
//         child: CardItemTelkomsel(
//           produkTelkomsel: produksTelkomsels[index],
//           currentIndex: index,
//         ),
//       );
//     },
//   ),
// ),
