import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:provider/provider.dart';

class PembayaranEWalletScreen extends StatefulWidget {
  final String? produkEWallet;
  const PembayaranEWalletScreen({Key? key, this.produkEWallet})
      : super(key: key);

  @override
  State<PembayaranEWalletScreen> createState() =>
      _PembayaranEWalletScreenState();
}

class _PembayaranEWalletScreenState extends State<PembayaranEWalletScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  dynamic val = -1;

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<MetodePembayaranViewModel>(context);
    var index;
    return Scaffold(
        backgroundColor: putih,
        appBar: AppBar(
          backgroundColor: putih,
          title: Text(
            'Pembayaran',
            style: appBar,
          ),
          centerTitle: true,
        ),
        body:
            // FutureBuilder<void>(
            //     future: viewModel.getAllResultMetodePembayaran(),
            //     builder: (context, AsyncSnapshot<void> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       } else {
            //         final result = viewModel.resultMetodePembayaran;

            //         return
            SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                "Detail Pembayaran",
                style: title9Sans,
              ),
              // const SizedBox(height: 12),
              // kasih Consumer
              Consumer<DaftarProdukViewModel>(
                builder: (context, value, child) => Container(
                  padding: const EdgeInsets.only(
                      left: 5, top: 12, bottom: 12, right: 10),
                  width: 340,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Produk",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                "Nomor Handphone",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                "Harga",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                "Biaya Admin",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                // "${value.listProdukEWallet.products?[index].label}",
                                "OVO 25",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                "087864420972",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                // "${value.listProdukEWallet.products?[index].price}",
                                "Rp. 21.500",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 5),
                              Text(
                                "RP. 2500",
                                style: title3Sans,
                              ),
                              // const SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 15),
              // kasih Consumer
              Consumer<DaftarProdukViewModel>(
                builder: (context, value, child) => Container(
                  padding: const EdgeInsets.only(
                      left: 12, top: 12, bottom: 12, right: 12),
                  height: 36,
                  width: 340,
                  color: bgTotal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: title5Sans,
                      ),
                      Text(
                        "Rp. 21500",
                        // "${value.listProdukEWallet.products?[index].label}",
                        style: title5Sans,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // Consumer<MetodePembayaranViewModel>(
              //   builder: (context, value, child) => Container(
              //     width: 312,
              //     height: 262,
              //     child: ListView.builder(
              //       // itemCount: value.listMetode.services!.length,
              //       itemBuilder: (context, index) {
              //         return RadioListTile(
              //           value: "${value.listMetode.id}",
              //           groupValue: val,
              //           onChanged: (value) {
              //             setState(() {
              //               val = value;
              //             });
              //           },
              //           title:
              //               Text("${value.listMetode.services![index].label}"),
              //           // "${value.resultMetodePembayaran[index].label}",
              //           // secondary: Image.asset(
              //           //   "assets/images/${value.resultMetodePembayaran[index].icon}",
              //           //   width: 50,
              //           // ),
              //           toggleable: true,
              //           controlAffinity: ListTileControlAffinity.trailing,
              //         );
              //       },
              //     ),
              //   ),
              // ),

              Text(
                "Pilih Metode Pembayaran",
                style: title9Sans,
              ),
              const SizedBox(height: 18),
              Text(
                "Virtual Account",
                style: title9Sans,
              ),
              const SizedBox(height: 11),
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                title: Text(
                  "BCA Virtual Account",
                  // "${viewModel.resultMetodePembayaran.length}",
                  style: title6Ubuntu,
                  // overflow: TextOverflow.ellipsis,
                ),
                secondary: Image.asset(
                  "assets/images/bca.png",
                  width: 50,
                ),
                toggleable: true,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              const SizedBox(height: 6),
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                title: Text(
                  "Mandiri Virtual Account",
                  style: title6Ubuntu,
                ),
                secondary: Image.asset(
                  "assets/images/mandiri.png",
                  width: 50,
                ),
                toggleable: true,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              const SizedBox(height: 30),
              Text(
                "Cashless E-Money",
                style: title9Sans,
              ),
              const SizedBox(height: 11),
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                value: 3,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                title: Text(
                  "Gopay",
                  style: title6Ubuntu,
                ),
                secondary: Image.asset(
                  "assets/images/gopay.png",
                  width: 50,
                ),
                toggleable: true,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              const SizedBox(height: 6),
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                value: 4,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                title: Text(
                  "OVO",
                  style: title6Ubuntu,
                ),
                secondary: Image.asset(
                  "assets/images/ovo.png",
                  width: 50,
                ),
                toggleable: true,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              const SizedBox(height: 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Pembayaran",
                    style: title5Sans,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: title5Sans,
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => _buildBottomSheet());
                        },
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      //cek di shared apakah ada data user, jika tidak ada lanjutkan ke laman login, jika ada lanjutkan ke pembayaran metode
                      //get visit
                      // getVisit() async {
                      //   SharedPreferences visit =
                      //       await SharedPreferences.getInstance();
                      //   bool? alreadyVisit =
                      //       visit.getBool("alreadyVisit") ?? false;
                      //   return alreadyVisit;
                      // }

                      Navigator.pushNamed(context, "/metodePembayaranEWallet");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryKuning1,
                      padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                    ),
                    child: Text("Bayar Sekarang", style: buttonText)),
              )
            ],
          ),
        ));
  }
}
//         ),
//   );
// }

Widget _buildBottomSheet() {
  return Container(
    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 23, right: 23),
    width: 360,
    height: 216,
    decoration: BoxDecoration(
      color: putih,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.close,
            size: 15,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text("Detail Pembayaran", style: title9Sans),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Produk", style: title3Sans),
                // const SizedBox(height: 5),
                Text("Nomor Handphone", style: title3Sans),
                // const SizedBox(height: 5),
                Text("Harga", style: title3Sans),
                // const SizedBox(height: 5),
                Text("Biaya Admin", style: title3Sans),
                // const SizedBox(height: 10),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("OVO 25", style: title3Sans),
                // const SizedBox(height: 5),
                Text("087864420972", style: title3Sans),
                // const SizedBox(height: 5),
                Text("Rp. 21.500", style: title3Sans),
                // const SizedBox(height: 5),
                Text("RP. 2500", style: title3Sans),
                // const SizedBox(height: 10),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding:
              const EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
          height: 36,
          // width: 360,
          color: bgTotal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Pembayaran",
                style: title5Sans,
              ),
              Text(
                "Total",
                style: title5Sans,
              ),
            ],
          ),
        ),
        // const SizedBox(height: 20),
      ],
    ),
  );
}
// }
