import 'package:flutter/material.dart';

class TagihanPDAMScreen extends StatefulWidget {
  const TagihanPDAMScreen({Key? key}) : super(key: key);

  @override
  State<TagihanPDAMScreen> createState() => _TagihanPDAMScreenState();
}

class _TagihanPDAMScreenState extends State<TagihanPDAMScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputId = TextEditingController();
  int? dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tagihan PDAM",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 500,
                  child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text("ID Pelanggan"),
                          TextField(
                            controller: inputId,
                            decoration: InputDecoration(
                              hintText: "123xxxx",
                              suffixIcon: Icon(Icons.cancel),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Wilayah"),
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
                              }),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Cek Tagihan"))
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WilayahPDAM {
  final String namaWilayah;
  WilayahPDAM({required this.namaWilayah});
}

List<WilayahPDAM> namaWilayah = <WilayahPDAM>[
  WilayahPDAM(namaWilayah: "Pilih Wilayah"),
  WilayahPDAM(namaWilayah: "PDAM AETRA JAKARTA"),
  WilayahPDAM(namaWilayah: "SPAM BATAM"),
  WilayahPDAM(namaWilayah: "PDAM KAB SUKABUMI"),
  WilayahPDAM(namaWilayah: "PDAM KOTA MALANG (JATIM)"),
  WilayahPDAM(namaWilayah: "PDAM KOTA BOGOR (JABAR)"),
  WilayahPDAM(namaWilayah: "PDAM KAB BOGOR (JABAR)")
];
