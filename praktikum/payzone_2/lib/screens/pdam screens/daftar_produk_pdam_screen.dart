import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:provider/provider.dart';

class DaftarProdukPdamScreen extends StatefulWidget {
  const DaftarProdukPdamScreen({Key? key}) : super(key: key);

  @override
  State<DaftarProdukPdamScreen> createState() => _DaftarProdukPdamScreenState();
}

class _DaftarProdukPdamScreenState extends State<DaftarProdukPdamScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  int? dropDownValue = 0;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<DaftarProdukViewModel>(context);
    var index;
    return Scaffold(
        backgroundColor: putih,
        appBar: AppBar(
          backgroundColor: putih,
          title: Text(
            "Tagihan PDAM",
            style: appBar,
          ),
          centerTitle: true,
        ),
        body:
            // FutureBuilder<void>(
            //     future: viewModel.getAllDaftarProdukPdam(),
            //     builder: (context, AsyncSnapshot<void> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       } else {
            //         final result =
            //             Provider.of<DaftarProdukViewModel>(context).listProdukEWallet;
            //         var index;
            // return
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
                              decoration: InputDecoration(
                                  hintStyle: title2Robo,
                                  labelStyle: title1Robo,
                                  labelText: "Nomor Pelanggan",
                                  hintText: "061200",
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Nomor Pelanggan tidak boleh kosong";
                                }
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Wilayah",
                              style: title3Ubuntu,
                            ),
                            DropdownButtonFormField(
                              items: [
                                DropdownMenuItem(
                                  value: 0,
                                  // result.products!.length,
                                  child: Text(
                                    "Pilih Wilayah",
                                    // "${result.products![index].label}",
                                    // "${viewModel.listProdukPdam.products?[index].group}",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 1,
                                  // result.products!.length,
                                  child: Text(
                                    // "${result.products![index].label}",
                                    "${viewModel.listProdukPdam.products?[index].label}",
                                    // "PDAM AETRA JAKARTA",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text(
                                    "SPAM BATAM",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 3,
                                  child: Text(
                                    "PDAM KAB SUKABUMI",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 4,
                                  child: Text(
                                    "PDAM KOTA MALANG (JATIM)",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 5,
                                  child: Text(
                                    "PDAM KOTA BOGOR (JABAR)",
                                    style: title9Ubuntu,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 6,
                                  child: Text(
                                    "PDAM KAB BOGOR (JABAR)",
                                    style: title9Ubuntu,
                                  ),
                                ),
                              ],
                              value: dropDownValue,
                              onChanged: (int? value) {
                                dropDownValue = value ?? 0;
                              },
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, "/pembayaranPdam");
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: primaryKuning1,
                                  padding: const EdgeInsets.fromLTRB(
                                      104, 12, 104, 12),
                                ),
                                child: Text("Cek Tagihan", style: buttonText),
                              ),
                            ),
                          ],
                        )),
                  ],
                )));
  }
}
//           ),
//     );
//   }
// }
