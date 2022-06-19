import 'package:flutter/material.dart';

class DetailProdukPDAM extends StatefulWidget {
  const DetailProdukPDAM({Key? key}) : super(key: key);

  @override
  State<DetailProdukPDAM> createState() => _DetailProdukPDAMState();
}

class _DetailProdukPDAMState extends State<DetailProdukPDAM> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputIdPelanggan = TextEditingController();
  TextEditingController inputWilayah = TextEditingController();
  int? dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tagihan PDAM'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Text(
              //   "ID Pelanggan",
              // ),
              // SizedBox(height: 10),
              TextFormField(
                controller: inputIdPelanggan,
                decoration: InputDecoration(
                  labelText: "ID Pelanggan",
                  hintText: '1234****',
                ),
              ),
              SizedBox(height: 20),
              // Text("ID Wilayah", textAlign: TextAlign.start),
              // SizedBox(height: 10),
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
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("Cek Tagihan"))
            ],
          ),
        ),
      ),
    );
  }
}
