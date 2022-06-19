import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';

// enum SingingCharacter { lafayette, jefferson }

class MetodePembayaranScreen extends StatefulWidget {
  const MetodePembayaranScreen({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranScreen> createState() => _MetodePembayaranScreenState();
}

class _MetodePembayaranScreenState extends State<MetodePembayaranScreen> {
  // SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: Theme.of(context).textTheme.caption!.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.ptSans().fontFamily),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 100,
            height: 250,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BCA Virtual Account",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  "Nomor Virtual Account",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),
                Text(
                  "123456789012345",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),
                Text(
                  "Dicek dalam 10 menit setelah pembayaran berhasil",
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),
                Text(
                  "Hanya menerima dari Bank BCA",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 40,
                  color: Colors.yellow[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.ptSans().fontFamily),
                      ),
                      // Row(
                      //   children: [Text("Total")],
                      // )
                    ],
                  ),
                )
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
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.ubuntu().fontFamily),
                      ),
                      content: Text(
                        "Pembayaran telah terverifikasi, Silahkan lihat status pemesananmu di History Transaksi",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.ubuntu().fontFamily),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryKuning1,
                            padding:
                                const EdgeInsets.fromLTRB(104, 12, 104, 12),
                          ),
                          child: Text(
                            "Lihat History Transaksi",
                            style: TextStyle(
                                color: onPrimary,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Text(
              "Cek Status Pembayaran",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.ptSans().fontFamily),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            width: 100,
            height: 200,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cara Pembayaran",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 20),
                // Text(
                //   "ATM BCA",
                //   style: TextStyle(
                //       fontSize: 10,
                //       fontWeight: FontWeight.w400,
                //       fontFamily: GoogleFonts.ubuntu().fontFamily),
                // ),
                SizedBox(height: 10),
                Text(
                  "M-BCA (BCA Mobile)",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),
                Text(
                  "Internet Banking BCA",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),
                Text(
                  "Kantor Bank BCA",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.ubuntu().fontFamily),
                ),
                SizedBox(height: 10),

                //contoh di Stack Overflow
                // RadioListTile<SingingCharacter>(
                //   title: const Text('Lafayette'),
                //   value: SingingCharacter.lafayette,
                //   groupValue: _character,
                //   onChanged: (SingingCharacter? value) {
                //     setState(() {
                //       _character = value;
                //     });
                //   },
                // ),
                // RadioListTile<SingingCharacter>(
                //   title: const Text('Thomas Jefferson'),
                //   value: SingingCharacter.jefferson,
                //   groupValue: _character,
                //   onChanged: (SingingCharacter? value) {
                //     setState(() {
                //       _character = value;
                //     });
                //   },
                // ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: primaryKuning1,
                padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
              ),
              child: Text(
                "OK",
                style: TextStyle(
                    color: onPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.ptSans().fontFamily),
              ))
        ],
      ),
    );
  }
}
