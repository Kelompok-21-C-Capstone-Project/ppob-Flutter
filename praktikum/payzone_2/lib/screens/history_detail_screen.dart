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
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 30,
              width: 300,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    // height: 35,
                    child: FilterChip(
                        elevation: 0,
                        label: Text("Selesai", style: title2Sans),
                        onSelected: (value) {}),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanggal", style: title1Sans),
                    Text("Order ID", style: title1Sans),
                    Text("Metode Pembayaran", style: title1Sans),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("30/MEI/2022 19.40 WIB", style: title1Sans),
                    Text("Payzone_71203829", style: title1Sans),
                    Text("BCA Virtual Account", style: title1Sans),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text("Detail Transaksi", style: title3Sans),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Text("Serial Number", style: title1Sans),
                    Text("Nama Produk", style: title1Sans),
                    Text("Harga", style: title1Sans),
                    Text("Biaya Admin", style: title1Sans),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("220513GM11157526", style: title1Sans),
                    Text("OVO 20", style: title1Sans),
                    Text("Rp 21.500", style: title1Sans),
                    Text("Rp 1.500", style: title1Sans),
                    const SizedBox(height: 15),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            //container untuk nampung total pembayraan
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
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryKuning1,
                  padding: const EdgeInsets.fromLTRB(87, 15, 90, 15),
                ),
                child: Text("Beli Lagi", style: title3Sans),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(87, 15, 90, 15),
                ),
                child: Text("Kembali ke Beranda", style: title3Sans),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
