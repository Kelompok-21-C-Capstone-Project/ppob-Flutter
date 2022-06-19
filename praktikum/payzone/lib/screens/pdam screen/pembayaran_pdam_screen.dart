import 'package:flutter/material.dart';
import 'package:payzone/components/constant.dart';

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
        title: Text(
          "Pembayaran",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            width: 100,
            height: 250,
            color: putih,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Detail Pembayaran",
                  style: title3Sans,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Produk",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Nomor Handphone",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Harga",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Biaya Admin",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OVO 25",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "08xxxxxxxxx",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Rp. 21.500",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "RP. 2500",
                          style: title1Sans,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 500,
                  height: 40,
                  color: primaryKuning2,
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
                                style: title4Sans,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: title4Sans,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 100,
                  height: 380,
                  color: putih,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Metode Pembayaran",
                        style: title4Sans,
                      ),
                      SizedBox(height: 10),
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Virtual Account",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 10),
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
                                style: title5Sans,
                              ),
                              secondary: Image.asset(
                                "assets/images/bca.png",
                                width: 50,
                              ),
                              toggleable: true,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            const SizedBox(height: 10),
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
                                style: title5Sans,
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
                              style: title3Sans,
                            ),
                            const SizedBox(height: 10),
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
                                style: title5Sans,
                              ),
                              secondary: Image.asset(
                                "assets/images/gopay.png",
                                width: 50,
                              ),
                              toggleable: true,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            const SizedBox(height: 10),
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
                                style: title5Sans,
                              ),
                              secondary: Image.asset(
                                "assets/images/ovo.png",
                                width: 50,
                              ),
                              toggleable: true,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 100,
                  height: 200,
                  color: putih,
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
                                        builder: (context) =>
                                            _buildBottomSheet());
                                  },
                                  child: Text("Total Pembayaran",
                                      style: title4Sans)),
                              const SizedBox(height: 5),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total", style: title4Sans),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: primaryKuning1,
                              padding:
                                  const EdgeInsets.fromLTRB(104, 12, 104, 12),
                            ),
                            child: Text(
                              "Bayar Sekarang",
                              style: title3Sans,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 100,
      height: 300,
      color: putih,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          const SizedBox(height: 10),
          Text("Detail Pembayaran", style: title3Sans),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Produk", style: title1Sans),
                  Text("Nomor Handphone", style: title1Sans),
                  Text("Harga", style: title1Sans),
                  Text("Biaya Admin", style: title1Sans),
                  const SizedBox(height: 10),
                  Text(
                    "Total Pembayaran",
                    style: title4Sans,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OVO 25", style: title1Sans),
                  Text("08xxxxxxxxx", style: title1Sans),
                  Text("Rp. 21.500", style: title1Sans),
                  Text("RP. 2500", style: title1Sans),
                  SizedBox(height: 10),
                  Text(
                    "Total ",
                    style: title4Sans,
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
