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
                      "Nomor Pelanggan",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Nama Pelanggan",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Lokasi",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "061200",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Reza Hadi",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "PDAM AETRA JAKARTA",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            Text(
              "Detail Pembayaran",
              style: title9Sans,
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
                      "Rp. 50.000",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Rp. 2.500",
                      style: title3Sans,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
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
                    Navigator.pushNamed(context, "/metodePembayaranPDAM");
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
      padding: const EdgeInsets.all(10),
      width: 360,
      height: 240,
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.topLeft,
            onPressed: () {},
            icon: Icon(Icons.close),
            iconSize: 15,
          ),
          // const SizedBox(height: 25),
          Text("Detail Tagihan", style: title9Sans),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Produk", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("Nomor Handphone", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("Harga", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("Biaya Admin", style: title3Sans),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OVO 25", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("08xxxxxxxxx", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("Rp. 21.500", style: title3Sans),
                  const SizedBox(height: 5),
                  Text("RP. 2500", style: title3Sans),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
            height: 36,
            width: 360,
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
