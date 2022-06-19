import 'package:flutter/material.dart';

class PembayaranPDAMScreen extends StatefulWidget {
  const PembayaranPDAMScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranPDAMScreen> createState() => _PembayaranPDAMScreenState();
}

class _PembayaranPDAMScreenState extends State<PembayaranPDAMScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.amber),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Informasi Pelanggan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text("Nomor Pelanggan"),
                      SizedBox(height: 5),
                      Text("Nama Pelanggan"),
                      SizedBox(height: 5),
                      Text("Lokasi"),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 120,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Detail Pembayaran",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text("Jumlah Pembayaran"),
                      Text("Biaya Admin"),
                      SizedBox(height: 10),
                      Text("Total Pembayaran")
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.purple),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 120,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Metode Pembayaran",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 120,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Bayar Sekarang"),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
