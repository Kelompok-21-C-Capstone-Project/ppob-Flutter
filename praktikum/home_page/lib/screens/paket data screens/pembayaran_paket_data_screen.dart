import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';

class PembayaranPaketDataScreen extends StatefulWidget {
  const PembayaranPaketDataScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranPaketDataScreen> createState() =>
      _PembayaranPaketDataScreenState();
}

class _PembayaranPaketDataScreenState extends State<PembayaranPaketDataScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? radioValue = " ";
  dynamic val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: primaryKuning1,
          title: Text(
            "Pembayaran",
            style: Theme.of(context).textTheme.caption!.copyWith(
                  fontFamily: GoogleFonts.ptSans().fontFamily,
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: 100,
              height: 250,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Detail Pembayaran",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Produk",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Nomor Handphone",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Harga",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Biaya Admin",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "OVO 25",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "08xxxxxxxxx",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Rp. 21.500",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "RP. 2500",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 500,
                    height: 40,
                    color: Colors.yellow[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Pembayaran",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily:
                                          GoogleFonts.ptSans().fontFamily),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily:
                                          GoogleFonts.ptSans().fontFamily),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: 100,
              height: 380,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Metode Pembayaran",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  SizedBox(height: 20),
                  Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Virtual Account",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 10),
                          RadioListTile(
                            value: 1,
                            groupValue: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            title: Text(
                              "BCA Virtual Account",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.ubuntu().fontFamily),
                            ),
                            secondary: Image.asset(
                              "assets/images/bca.png",
                              width: 50,
                            ),
                            toggleable: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SizedBox(height: 10),
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
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.ubuntu().fontFamily),
                            ),
                            secondary: Image.asset(
                              "assets/images/mandiri.png",
                              width: 50,
                            ),
                            toggleable: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          Text(
                            "Cashless E-Money",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
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
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.ubuntu().fontFamily),
                            ),
                            secondary: Image.asset(
                              "assets/images/gopay.png",
                              width: 50,
                            ),
                            toggleable: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SizedBox(height: 10),
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
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.ubuntu().fontFamily),
                            ),
                            secondary: Image.asset(
                              "assets/images/ovo.png",
                              width: 50,
                            ),
                            toggleable: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ],
                      ))
                  // FormBuilder(
                  //   key: _formKey,
                  //   child: Column(
                  //     children: [
                  //       FormBuilderRadioGroup(
                  //           decoration: InputDecoration(labelText: "Metode"),
                  //           name: "Metode Pembayaran",
                  //           initialValue: null,
                  //           controlAffinity: ControlAffinity.trailing,
                  //           validator: FormBuilderValidators.compose(
                  //               [FormBuilderValidators.required()]),
                  //           options: ['BCA', 'Mandiri']
                  //               .map((e) => FormBuilderFieldOption(
                  //                     value: e,
                  //                     child: Text("${e}"),
                  //                   ))
                  //               .toList(growable: false))
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // InkWell(
              //   onTap: () {
              //     showModalBottomSheet(
              //         context: context,
              //         builder: (context) => _buildBottomSheet());
              //   },
              //   child: Text(
              //     "Total Pembayaran",
              //     style:
              //         TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              //   ),
              // ),
              padding: EdgeInsets.all(20),
              width: 100,
              height: 200,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) => _buildBottomSheet());
                              },
                              child: Text(
                                "Total Pembayaran",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily:
                                        GoogleFonts.ptSans().fontFamily),
                              )),
                          SizedBox(height: 5),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.ptSans().fontFamily),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, "/metodePembayaranEWallet");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryKuning1,
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      ),
                      child: Text(
                        "Bayar Sekarang",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            fontFamily: GoogleFonts.ptSans().fontFamily),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: EdgeInsets.all(20),
      width: 100,
      height: 300,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          SizedBox(height: 10),
          Text(
            "Detail Pembayaran",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.ptSans().fontFamily),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Produk",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "Nomor Handphone",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "Harga",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "Biaya Admin",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OVO 25",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "08xxxxxxxxx",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "Rp. 21.500",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  Text(
                    "RP. 2500",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Total ",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ptSans().fontFamily),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
