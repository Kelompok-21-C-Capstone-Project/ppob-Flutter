import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

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
            const SizedBox(height: 16),
            Text("BCA Virtual Account", style: title4Ubuntu),
            const Divider(
              color: Colors.grey,
              height: 0,
            ),
            const SizedBox(height: 12),
            Text(
              "Nomor Virtual Account",
              style: title3Ubuntu,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(height: 5),
                Text("123456789012345", style: title4Ubuntu),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.copy),
                      iconSize: 9,
                    ),
                    Text("Salin", style: title3Sans)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text("Dicek dalam 10 menit setelah pembayaran berhasil",
                style: title7Ubuntu),
            const SizedBox(height: 5),
            Text("Hanya menerima dari Bank BCA", style: title3Ubuntu),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 360,
              color: bgTotal,
              padding:
                  EdgeInsets.only(left: 23, top: 12, bottom: 12, right: 23),
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
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            //tengah
                            "Pembayaran Berhasil",
                            style: title4Ubuntu,
                          ),
                          content: Text(
                            "Pembayaran telah terverifikasi, Silahkan lihat status pemesananmu di History Transaksi",
                            style: title2Ubuntu,
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/history");
                              },
                              style: ElevatedButton.styleFrom(
                                primary: primaryKuning1,
                                padding:
                                    const EdgeInsets.fromLTRB(53, 15, 90, 15),
                              ),
                              child: Text("Lihat History Transaksi",
                                  style: buttonText),
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
                  style: buttonText,
                )),
            const SizedBox(height: 45),
            Text(
              "Cara Pembayaran",
              style: title3Ubuntu,
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: Text(
                'ATM BCA',
                style: title1Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    dense: true,
                    title: Text(
                      'ATM BCA Tutorial ',
                      style: title1Ubuntu,
                    )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'M-BCA (BCA Mobile)',
                style: title1Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    dense: true,
                    title: Text(
                      'M-BCA (BCA Mobile) Tutorial',
                      style: title1Ubuntu,
                    )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Internet Banking BCA',
                style: title1Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    dense: true,
                    title: Text(
                      'Internet Banking BCA Tutorial',
                      style: title1Ubuntu,
                    )),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Kantor Bank BCA',
                style: title1Ubuntu,
              ),
              children: <Widget>[
                ListTile(
                    dense: true,
                    title: Text(
                      'Kantor Bank BCA Tutorial',
                      style: title1Ubuntu,
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryKuning1,
                    padding: const EdgeInsets.fromLTRB(155, 12, 155, 12),
                  ),
                  child: Text("OK", style: buttonText)),
            ),
          ],
        ),
      ),
    );
  }
}
