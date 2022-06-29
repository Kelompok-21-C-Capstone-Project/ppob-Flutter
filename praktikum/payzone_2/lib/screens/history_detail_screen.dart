import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class HistoryDetailScreen extends StatefulWidget {
  const HistoryDetailScreen({Key? key}) : super(key: key);

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Detail Transaksi",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // container status
            Container(
              width: 61,
              height: 21,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(color: variant),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Selesai",
                style: selesai,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanggal", style: title3Sans),
                    Text("Order ID", style: title3Sans),
                    Text("Metode Pembayaran", style: title3Sans),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("30/MEI/2022 19.40 WIB", style: title3Sans),
                    Text("Payzone_71203829", style: title3Sans),
                    Text("BCA Virtual Account", style: title3Sans),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text("Detail Transaksi", style: title9Sans),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Serial Number", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("Nama Produk", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("Harga", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("Biaya Admin", style: title3Sans),
                    const SizedBox(height: 15),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("220513GM11157526", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("OVO 20", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("Rp 21.500", style: title3Sans),
                    const SizedBox(height: 5),
                    Text("Rp 1.500", style: title3Sans),
                    const SizedBox(height: 15),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            //container untuk nampung total pembayraan
            Container(
              padding:
                  EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
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

            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryKuning1,
                  padding: const EdgeInsets.fromLTRB(115, 15, 115, 15),
                ),
                child: Text("Beli Lagi", style: buttonText),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ButtonStyle(
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.fromLTRB(95, 15, 95, 15),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(putih),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: primaryKuning1)))),
                  child: Text(
                    "Kembali ke Layar",
                    style: buttonText,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
