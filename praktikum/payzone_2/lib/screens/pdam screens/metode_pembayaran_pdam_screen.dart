import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class MetodePembayaranPdamScreen extends StatefulWidget {
  const MetodePembayaranPdamScreen({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranPdamScreen> createState() =>
      _MetodePembayaranPdamScreenState();
}

class _MetodePembayaranPdamScreenState
    extends State<MetodePembayaranPdamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: primaryKuning2,
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
            const SizedBox(height: 10),
            Text("123456789012345", style: title4Ubuntu),
            const SizedBox(height: 10),
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
            Text(
              "ATM BCA",
              style: title3Ubuntu,
            ),
            const SizedBox(height: 10),
            Text(
              "M-BCA (BCA Mobile)",
              style: title3Ubuntu,
            ),
            const SizedBox(height: 10),
            Text(
              "Internet Banking BCA",
              style: title3Ubuntu,
            ),
            const SizedBox(height: 10),
            Text(
              "Kantor Bank BCA",
              style: title3Ubuntu,
            ),
            // const ExpansionTile(
            //   title: Text(
            //     'ATM BCA',
            //     style: TextStyle(fontSize: 10),
            //   ),
            //   subtitle: Text('Trailing expansion arrow icon'),
            //   children: <Widget>[
            //     ListTile(title: Text('This is tile number 1')),
            //   ],
            // ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
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