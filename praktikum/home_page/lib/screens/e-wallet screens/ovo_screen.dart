import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "OVO",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontFamily: GoogleFonts.ptSans().fontFamily,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 80,
                  width: 600,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                  ),
                ),
                _buildDropDownText(),
                _buildPaket()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDropDownText() {
    return Column(
      children: [
        Text(
          "Keuntungan Bertransaksi di Payzone Online",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.ptSans().fontFamily),
        ),
        SizedBox(height: 10),
        Text(
          "Beli Produk Lainnya",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.ptSans().fontFamily),
        ),
      ],
    );
  }

  Widget _buildPaket() {
// Container yang menampung opsi Voucher
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      height: 480,
      width: 600,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Nominal Voucher : OVO",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.ptSans().fontFamily),
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.grey,
              // height: 20,
              thickness: 1,
            ),

            // sebelumnya disini container
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  // margin: EdgeInsets.all(20),
                  height: 400,
                  width: 4500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 5,
                    // mainAxisSpacing: 5,
                    children: List.generate(
                      produksOvo.length,
                      (index) {
                        return Center(
                          child: CardItemOVO(produkOvo: produksOvo[index]),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
  const CardItemOVO({Key? key, required this.produkOvo}) : super(key: key);
  final ProdukOVO produkOvo;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 150,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${produkOvo.title}",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    fontFamily: GoogleFonts.ubuntu().fontFamily),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Harga",
                style: TextStyle(
                    fontFamily: GoogleFonts.ptSans().fontFamily,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "${produkOvo.harga}",
                style: TextStyle(
                    color: Colors.amber,
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
