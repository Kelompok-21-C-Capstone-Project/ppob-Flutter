import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

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
            Text(
              "Detail Pembayaran",
              style: title3Sans,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Produk",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Nomor Handphone",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Harga",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Biaya Admin",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OVO 25",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "08xxxxxxxxx",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Rp. 21.500",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "RP. 2500",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Pilih Metode Pembayaran",
              style: title4Sans,
            ),
            const SizedBox(height: 10),
            Text(
              "Virtual Account",
              style: title3Sans,
            ),
            const SizedBox(height: 10),
            RadioListTile(
              // contentPadding: EdgeInsets.all(10),
              // dense: true,
              value: 1,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
              title: Text(
                "BCA Virtual Account",
                style: title5Sans,
                // overflow: TextOverflow.ellipsis,
              ),
              secondary: Image.asset(
                "assets/images/bca.png",
                width: 50,
              ),
              // toggleable: true,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            const SizedBox(height: 10),
            RadioListTile(
              value: 2,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
              title: Text(
                "Mandiri Virtual Account",
                style: title5Sans,
              ),
              secondary: Image.asset(
                "assets/images/mandiri.png",
                width: 50,
              ),
              // toggleable: true,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Text(
              "Cashless E-Money",
              style: title3Sans,
            ),
            const SizedBox(height: 10),
            RadioListTile(
              value: 3,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
              title: Text(
                "Gopay",
                style: title5Sans,
              ),
              secondary: Image.asset(
                "assets/images/gopay.png",
                width: 50,
              ),
              // toggleable: true,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            const SizedBox(height: 10),
            RadioListTile(
              value: 4,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
              title: Text(
                "OVO",
                style: title5Sans,
              ),
              secondary: Image.asset(
                "assets/images/ovo.png",
                width: 50,
              ),
              // toggleable: true,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Pembayaran"),
                Text("Total"),

                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(Icons.keyboard_arrow_down),
                //     ),
                //   ],
                // )
              ],
            ),
            Divider(color: Colors.grey, thickness: 1),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/metodePembayaranEWallet");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                  ),
                  child: Text("Bayar Sekarang", style: title3Sans)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 100,
      height: 300,
      color: putih,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          const SizedBox(height: 10),
          Text("Detail Pembayaran", style: title3Sans),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Produk", style: title1Sans),
                  Text("Nomor Handphone", style: title1Sans),
                  Text("Harga", style: title1Sans),
                  Text("Biaya Admin", style: title1Sans),
                  const SizedBox(height: 10),
                  Text(
                    "Total Pembayaran",
                    style: title4Sans,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OVO 25", style: title1Sans),
                  Text("08xxxxxxxxx", style: title1Sans),
                  Text("Rp. 21.500", style: title1Sans),
                  Text("RP. 2500", style: title1Sans),
                  SizedBox(height: 10),
                  Text(
                    "Total ",
                    style: title4Sans,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MetodePembayaran {
  String? nama;
  String? gambar;
  MetodePembayaran({this.nama, this.gambar});
}

List<MetodePembayaran> metodePembayarans = [
  MetodePembayaran(
    nama: "BCA",
    gambar: "assets/images/bca.png",
  ),
  MetodePembayaran(
    nama: "Mandiri",
    gambar: "assets/images/mandiri.png",
  ),
  MetodePembayaran(
    nama: "OVO",
    gambar: "assets/images/ovo.png",
  ),
  MetodePembayaran(
    nama: "Gopay",
    gambar: "assets/images/gopay.png",
  ),
];
