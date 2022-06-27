import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/e-wallet%20screens/pembayaran_e_wallet_screen.dart';

class OVOScreen extends StatefulWidget {
  const OVOScreen({Key? key}) : super(key: key);

  @override
  State<OVOScreen> createState() => _OVOScreenState();
}

class _OVOScreenState extends State<OVOScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNomorHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "OVO",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: putih),
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              height: 80,
              width: 600,
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Nomor Handphone",
                            hintText: "08xxxx",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                      ),
                    ],
                  )),
            ),
            _buildDropDownText(),
            _buildPaket(),
          ],
        ),
      ),
    );
  }

  Widget _buildDropDownText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Keuntungan Bertransaksi di Payzone Online",
          style: title2Sans,
        ),
        const SizedBox(height: 10),
        ExpansionTile(
          title: Text(
              "Tentang, Kelebihan, Penggunaan, Cara Isi Saldo, Cara Cek Saldo OVO",
              style: title1Sans),
          subtitle: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: title8Sans,
          ),
          children: <Widget>[
            ListTile(
                title: Text('Kelebihan dan Keuntungan OVO', style: title1Sans)),
          ],
        ),
        ExpansionTile(
          title: Text("Kelebihan dan Keuntungan OVO", style: title1Sans),
          children: <Widget>[
            ListTile(
                title: Text('Kelebihan dan Keuntungan OVO', style: title1Sans)),
          ],
        ),
        ExpansionTile(
          title: Text("Cara Penggunaan OVO", style: title1Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Penggunaan OVO", style: title1Sans)),
          ],
        ),
        ExpansionTile(
          title: Text("Cara Mengisi Saldo OVO", style: title1Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Mengisi Saldo OVO", style: title1Sans)),
          ],
        ),
        ExpansionTile(
          title: Text("Cara Cek Isi Saldo OVO", style: title1Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Cek Isi Saldo OVO", style: title1Sans)),
          ],
        ),
        ExpansionTile(
          title: Text("Ketentuan Isi Saldo OVO di Payzone", style: title1Sans),
          children: <Widget>[
            ListTile(
                title: Text("Ketentuan Isi Saldo OVO di Payzone",
                    style: title1Sans)),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          "Beli Produk Lainnya",
          style: title2Sans,
        ),
      ],
    );
  }

  Widget _buildPaket() {
// Container yang menampung opsi Voucher
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pilih Nominal Voucher : OVO",
            style: title2Sans,
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Container(
            height: 400,
            width: 4500,
            decoration: BoxDecoration(color: putih),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                produksOvo.length,
                (index) {
                  return Center(
                    child: CardItemOVO(
                      produkOvo: produksOvo[index],
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<ProdukOVO> produksOvo = <ProdukOVO>[
  ProdukOVO(title: "OVO 20", harga: "Rp. 21.500"),
  ProdukOVO(title: "OVO 25", harga: "Rp. 26.500"),
  ProdukOVO(title: "OVO 40", harga: "Rp. 41.500"),
  ProdukOVO(title: "OVO 50", harga: "Rp. 51.500"),
  ProdukOVO(title: "OVO 100", harga: "Rp. 101.500"),
  ProdukOVO(title: "OVO 200", harga: "Rp. 201.500"),
];

class ProdukOVO {
  final String title;
  final String harga;
  const ProdukOVO({required this.title, required this.harga});
}

class CardItemOVO extends StatelessWidget {
  CardItemOVO({Key? key, required this.produkOvo, required this.index})
      : super(key: key);
  final ProdukOVO produkOvo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, "/pembayaranEWallet", arguments: {
            //   "produk": produkOvo,
            //   "index": index,
            // });
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PembayaranEWalletScreen(),
                ));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${produkOvo.title}",
                  style: title1Ubuntu,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Text(
                  "Harga",
                  style: title1Sans,
                ),
                Text(
                  "${produkOvo.harga}",
                  style: title2Ubuntu,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
