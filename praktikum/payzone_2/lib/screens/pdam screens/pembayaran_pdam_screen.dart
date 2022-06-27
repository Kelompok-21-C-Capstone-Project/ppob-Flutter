import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class PembayaranPdamScreen extends StatefulWidget {
  const PembayaranPdamScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranPdamScreen> createState() => _PembayaranPdamScreenState();
}

class _PembayaranPdamScreenState extends State<PembayaranPdamScreen> {
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
              "Informasi Pelanggan",
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
                      "Nomor Pelanggan",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Nama Pelanggan",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Lokasi",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "061200",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Reza Hadi",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "PDAM AETRA JAKARTA",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
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
                      "Jumlah Tagihan",
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
                      "Rp. 50.000",
                      style: title1Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Rp. 2.500",
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
                Text(
                  "Total Pembayaran",
                  style: title4Sans,
                ),
                Row(
                  children: [
                    Text(
                      "Total",
                      style: title4Sans,
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => _buildBottomSheet());
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 20,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 1),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/metodePembayaranPDAM");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(120, 12, 120, 12),
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OVO 25", style: title1Sans),
                  Text("08xxxxxxxxx", style: title1Sans),
                  Text("Rp. 21.500", style: title1Sans),
                  Text("RP. 2500", style: title1Sans),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 35,
            width: 400,
            color: primaryKuning2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Pembayaran",
                  style: title4Sans,
                ),
                Text(
                  "Total",
                  style: title4Sans,
                ),
              ],
            ),
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
