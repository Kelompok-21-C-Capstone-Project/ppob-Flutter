import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/client_daftar_produk_view_model..dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PembayaranPaketDataScreen extends StatefulWidget {
  // final String? paketId;
  const PembayaranPaketDataScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranPaketDataScreen> createState() =>
      _PembayaranPaketDataScreenState();
}

class _PembayaranPaketDataScreenState extends State<PembayaranPaketDataScreen> {
  dynamic val = -1;

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Detail Pembayaran",
              style: title9Sans,
            ),
            // const SizedBox(height: 12),

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
                              "OVO 25",
                              // "${result.products![index].label}",
                              style: title3Sans,
                            ),
                            // const SizedBox(height: 5),
                            Text(
                              "087864420972",
                              style: title3Sans,
                            ),
                            // const SizedBox(height: 5),
                            Text(
                              "Rp. 21.500",
                              // "${result.products![index].price}",
                              style: title3Sans,
                            ),
                            // const SizedBox(height: 5),
                            Text(
                              "RP. 2500",
                              style: title3Sans,
                            ),
                            // const SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // const SizedBox(height: 15),
            Consumer<DaftarProdukViewModel>(
              builder: (context, value, child) => Container(
                padding: const EdgeInsets.only(
                    left: 12, top: 12, bottom: 12, right: 12),
                height: 36,
                width: 312,
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
                      // "${value.listProdukEWallet.products?[index].label}",
                      style: title5Sans,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              "Pilih Metode Pembayaran",
              style: title9Sans,
            ),
            const SizedBox(height: 18),
            Text(
              "Virtual Account",
              style: title3Sans,
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
                    Navigator.pushNamed(context, "/metodePembayaranPaketData");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                  ),
                  child: Text("Bayar Sekarang", style: buttonText)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 23, right: 23),
      width: 360,
      height: 240,
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
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
          const SizedBox(height: 15),
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
}
