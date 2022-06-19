import 'package:flutter/material.dart';

class DetailPaketData extends StatefulWidget {
  const DetailPaketData({Key? key}) : super(key: key);

  @override
  State<DetailPaketData> createState() => _DetailPaketDataState();
}

class _DetailPaketDataState extends State<DetailPaketData> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputIdPelanggan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Data"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        // height: 50,
        // width: 100,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        // ),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: inputIdPelanggan,
                  decoration: InputDecoration(
                    labelText: "Nomor Handphone",
                    hintText: '08****',
                  ),
                ),
                SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
