import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payzone_2/components/constant.dart';

class MetodePembayaranScreen extends StatefulWidget {
  const MetodePembayaranScreen({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranScreen> createState() => _MetodePembayaranScreenState();
}

class _MetodePembayaranScreenState extends State<MetodePembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Pembayaran", style: appBar),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BCA Virtual Account", style: title1Ubuntu),
            const Divider(
              color: Colors.grey,
            ),
            Text(
              "Nomor Virtual Account",
              style: title4Ubuntu,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("123456789012345", style: title4Ubuntu),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.copy),
                      iconSize: 12,
                    ),
                    Text("Salin", style: title4Ubuntu)
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 10),
            Text("Dicek dalam 10 menit setelah pembayaran berhasil",
                style: title5Ubuntu),
            const SizedBox(height: 10),
            Text("Hanya menerima dari Bank BCA", style: title4Ubuntu),
            const SizedBox(height: 16),
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
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // masuk link show dialog cek history
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
                              style: title3Ubuntu,
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: primaryKuning1,
                                  padding:
                                      const EdgeInsets.fromLTRB(87, 15, 90, 15),
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
                  child: Text(
                    "Cek Status Pembayaran",
                    style: title3Sans,
                  )),
            ),
            const SizedBox(height: 30),
            Text(
              "Cara Pembayaran",
              style: title4Ubuntu,
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: Text(
                'ATM BCA',
                style: title3Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'ATM BCA Tutorial ',
                  style: title3Ubuntu,
                )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'M-BCA (BCA Mobile)',
                style: title3Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'M-BCA (BCA Mobile) Tutorial',
                  style: title3Ubuntu,
                )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Internet Banking BCA',
                style: title3Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'Internet Banking BCA Tutorial',
                  style: title3Ubuntu,
                )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Kantor Bank BCA',
                style: title3Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'Kantor Bank BCA Tutorial',
                  style: title3Ubuntu,
                )),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // kembali ke home page
                    // masih eror di bagian ke home page muncul panah kembali
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(155, 12, 155, 12),
                  ),
                  child: Text(
                    "OK",
                    style: title3Sans,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
