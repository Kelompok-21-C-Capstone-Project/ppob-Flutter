import 'package:flutter/material.dart';
import 'package:payzone/components/constant.dart';

class MetodePembayaranPaketDataScreen extends StatefulWidget {
  const MetodePembayaranPaketDataScreen({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranPaketDataScreen> createState() =>
      _MetodePembayaranPaketDataScreenState();
}

class _MetodePembayaranPaketDataScreenState
    extends State<MetodePembayaranPaketDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryKuning1,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Pembayaran", style: appBar),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: 100,
            height: 250,
            color: putih,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("BCA Virtual Account", style: title6Sans),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  "Nomor Virtual Account",
                  style: title7Sans,
                ),
                const SizedBox(height: 10),
                Text("123456789012345", style: title6Sans),
                const SizedBox(height: 10),
                Text("Dicek dalam 10 menit setelah pembayaran berhasil",
                    style: title8Sans),
                const SizedBox(height: 10),
                Text("Hanya menerima dari Bank BCA", style: title7Sans),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 40,
                  color: primaryKuning2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Pembayaran", style: title4Sans),
                      // Row(
                      //   children: [Text("Total")],
                      // )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Pembayaran Berhasil",
                              style: title1Ubuntu,
                            ),
                            content: Text(
                                "Pembayaran telah terverifikasi, Silahkan lihat status pemesananmu di History Transaksi",
                                style: title3Ubuntu),
                            actions: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: primaryKuning1,
                                  padding: const EdgeInsets.fromLTRB(
                                      104, 12, 104, 12),
                                ),
                                child: Text("Lihat History Transaksi",
                                    style: title3Sans),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                  ),
                  child: Text("Cek Status Pembayaran", style: title3Sans),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cara Pembayaran", style: title4Ubuntu),
                      const SizedBox(height: 20),
                      const SizedBox(height: 10),
                      Text("M-BCA (BCA Mobile)", style: title3Ubuntu),
                      SizedBox(height: 10),
                      Text("Internet Banking BCA", style: title3Ubuntu),
                      const SizedBox(height: 10),
                      Text("Kantor Bank BCA", style: title3Ubuntu),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: primaryKuning1,
                      padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                    ),
                    child: Text("OK", style: title3Sans))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
