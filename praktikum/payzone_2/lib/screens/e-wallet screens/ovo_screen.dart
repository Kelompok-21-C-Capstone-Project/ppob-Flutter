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
        padding: const EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //buat snackbar
            const SizedBox(height: 10),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintStyle: title2Robo,
                          labelStyle: title1Robo,
                          labelText: "Nomor Handphone",
                          hintText: "08xxxx",
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                  ],
                )),
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
        const SizedBox(height: 14),
        Text(
          "Keuntungan Bertransaksi di Payzone Online",
          style: title10Sans,
        ),
        const SizedBox(height: 23),
        ExpansionTile(
          title: Text(
              "Tentang, Kelebihan, Penggunaan, Cara Isi Saldo, Cara Cek Saldo OVO",
              style: title3Sans),
          subtitle: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: title3Sans,
          ),
          children: <Widget>[
            ListTile(
                title: Text('Kelebihan dan Keuntungan OVO', style: title3Sans)),
          ],
        ),
        const SizedBox(height: 7),
        ExpansionTile(
          title: Text("Kelebihan dan Keuntungan OVO", style: title3Sans),
          children: <Widget>[
            ListTile(
                title: Text('Kelebihan dan Keuntungan OVO', style: title3Sans)),
          ],
        ),
        const SizedBox(height: 7),
        ExpansionTile(
          title: Text("Cara Penggunaan OVO", style: title3Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Penggunaan OVO", style: title3Sans)),
          ],
        ),
        const SizedBox(height: 7),
        ExpansionTile(
          title: Text("Cara Mengisi Saldo OVO", style: title3Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Mengisi Saldo OVO", style: title3Sans)),
          ],
        ),
        const SizedBox(height: 7),
        ExpansionTile(
          title: Text("Cara Cek Isi Saldo OVO", style: title3Sans),
          children: <Widget>[
            ListTile(title: Text("Cara Cek Isi Saldo OVO", style: title3Sans)),
          ],
        ),
        const SizedBox(height: 7),
        ExpansionTile(
          title: Text("Ketentuan Isi Saldo OVO di Payzone", style: title3Sans),
          children: <Widget>[
            ListTile(
                title: Text("Ketentuan Isi Saldo OVO di Payzone",
                    style: title3Sans)),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "Beli Produk Lainnya",
          style: title10Sans,
        ),
        const SizedBox(height: 15),
        // _buildProdukLain(),
      ],
    );
  }

  Widget _buildPaket() {
// Container yang menampung opsi Voucher
    return SingleChildScrollView(
      // padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 41),
          Text(
            "Pilih Nominal Voucher : OVO",
            style: title10Sans,
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
            thickness: 1,
          ),
          const SizedBox(height: 13),
          Container(
            height: 550,
            width: 4600,
            decoration: BoxDecoration(color: putih),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 10,
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

  Widget _buildProdukLain() {
    return SingleChildScrollView(
      // padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 41),
          Text(
            "Pilih Nominal Voucher : OVO",
            style: title2Sans,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          const SizedBox(height: 13),
          Container(
            height: 500,
            width: 4600,
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
      // mainAxisAlignment: MainAxisAlignment.center,
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
            padding:
                const EdgeInsets.only(top: 32, left: 12, bottom: 32, right: 12),
            //130x130
            height: 145,
            width: 145,
            decoration: BoxDecoration(
                color: putih,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 1)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${produkOvo.title}",
                  style: title4Ubuntu,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Text(
                  "Harga",
                  style: title3Sans,
                ),
                Text(
                  "${produkOvo.harga}",
                  style: title5Ubuntu,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
