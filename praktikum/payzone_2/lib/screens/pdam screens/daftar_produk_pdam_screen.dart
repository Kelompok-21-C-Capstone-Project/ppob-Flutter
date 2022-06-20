import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';

class DaftarProdukPdamScreen extends StatefulWidget {
  const DaftarProdukPdamScreen({Key? key}) : super(key: key);

  @override
  State<DaftarProdukPdamScreen> createState() => _DaftarProdukPdamScreenState();
}

class _DaftarProdukPdamScreenState extends State<DaftarProdukPdamScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  int? dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: primaryKuning1,
        title: Text(
          "Tagihan PDAM",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: putih),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            height: 600,
            width: 600,
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Nomor Pelanggan",
                          hintText: "061200",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Wilayah",
                      style: title4Ubuntu,
                    ),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                          value: 0,
                          child: Text("Pilih Wilayah"),
                        ),
                        DropdownMenuItem(
                          value: 1,
                          child: Text("PDAM AETRA JAKARTA"),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text("SPAM BATAM"),
                        ),
                        DropdownMenuItem(
                          value: 3,
                          child: Text("PDAM KAB SUKABUMI"),
                        ),
                        DropdownMenuItem(
                          value: 4,
                          child: Text("PDAM KOTA MALANG (JATIM)"),
                        ),
                        DropdownMenuItem(
                          value: 5,
                          child: Text("PDAM KOTA BOGOR (JABAR)"),
                        ),
                        DropdownMenuItem(
                          value: 6,
                          child: Text("PDAM KAB BOGOR (JABAR)"),
                        ),
                      ],
                      value: dropDownValue,
                      onChanged: (int? value) {
                        dropDownValue = value ?? 0;
                      },
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/pembayaranPdam");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: primaryKuning1,
                          padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                        ),
                        child: Text("Cek Tagihan", style: title3Sans),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      )),
    );
  }
}
