import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PembayaranEWalletScreen extends StatefulWidget {
  const PembayaranEWalletScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranEWalletScreen> createState() =>
      _PembayaranEWalletScreenState();
}

class _PembayaranEWalletScreenState extends State<PembayaranEWalletScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Detail Pembayaran",
              style: title9Sans,
            ),
            const SizedBox(height: 12),
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
                    const SizedBox(height: 5),
                    Text(
                      "Nomor Handphone",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Harga",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Biaya Admin",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "OVO 25",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "08xxxxxxxxx",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Rp. 21.500",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "RP. 2500",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding:
                  EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
              height: 35,
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
            const SizedBox(height: 32),
            Text(
              "Pilih Metode Pembayaran",
              style: title9Sans,
            ),
            const SizedBox(height: 18),
            Text(
              "Virtual Account",
              style: title9Sans,
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
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
            const Divider(color: Colors.grey, thickness: 1),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    //cek di shared apakah ada data user, jika tidak ada lanjutkan ke laman login, jika ada lanjutkan ke pembayaran metode
                    //get visit
                    getVisit() async {
                      SharedPreferences visit =
                          await SharedPreferences.getInstance();
                      bool? alreadyVisit =
                          visit.getBool("alreadyVisit") ?? false;
                      return alreadyVisit;
                    }

                    Navigator.pushNamed(context, "/metodePembayaranEWallet");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(120, 12, 120, 12),
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
      padding: const EdgeInsets.all(15),
      width: 100,
      height: 300,
      color: putih,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          IconButton(
            alignment: Alignment.topLeft,
            onPressed: () {},
            icon: Icon(Icons.close),
            iconSize: 15,
          ),
          const SizedBox(height: 25),
          Text("Detail Pembayaran", style: title9Sans),
          const SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Produk", style: title3Sans),
                  Text("Nomor Handphone", style: title3Sans),
                  Text("Harga", style: title3Sans),
                  Text("Biaya Admin", style: title3Sans),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("OVO 25", style: title3Sans),
                  Text("08xxxxxxxxx", style: title3Sans),
                  Text("Rp. 21.500", style: title3Sans),
                  Text("RP. 2500", style: title3Sans),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
            height: 35,
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
        ],
      ),
    );
  }
}
