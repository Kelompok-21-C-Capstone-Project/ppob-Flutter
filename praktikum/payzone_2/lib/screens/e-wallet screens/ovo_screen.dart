import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/screens/e-wallet%20screens/pembayaran_e_wallet_screen.dart';
import 'package:provider/provider.dart';
import '../../view model/client_daftar_produk_view_model..dart';

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
          padding: const EdgeInsets.all(23),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Form(
                key: formKey,
                child: TextFormField(
                  // maxLength: 12,
                  decoration: InputDecoration(
                      hintStyle: title2Robo,
                      labelStyle: title1Robo,
                      labelText: "Nomor Handphone",
                      hintText: "08xxxx",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(12),
                    // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
              ),
              _buildDropDownText(),
              _buildPaket(context),
            ],
          ),
        ));
  }
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
      // const SizedBox(height: 13),
      // ExpansionTile(
      //   title: Text(
      //       "Tentang, Kelebihan, Penggunaan, Cara Isi Saldo, Cara Cek Saldo OVO",
      //       style: title3Sans),
      //   subtitle: Text(
      //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      //     style: title13Sans,
      //     textAlign: TextAlign.justify,
      //   ),
      //   children: <Widget>[
      //     ListTile(
      //         visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      //         // contentPadding: EdgeInsets.all(0),
      //         dense: true,
      //         title: Text('Kelebihan dan Keuntungan OVO', style: title13Sans)),
      //   ],
      // ),
      Container(
        padding: const EdgeInsets.all(15),
        height: 120,
        width: 300,
        child: Column(
          children: [
            Text(
                "Tentang, Kelebihan, Penggunaan, Cara Isi Saldo, Cara Cek Saldo OVO",
                style: title3Sans),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: title13Sans,
              textAlign: TextAlign.justify,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: icon,
            )
          ],
        ),
      ),
      // const SizedBox(height: 7),
      ExpansionTile(
        title: Text("Kelebihan dan Keuntungan OVO", style: title3Sans),
        children: <Widget>[
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              // contentPadding: EdgeInsets.all(0),
              dense: true,
              title: Text('Kelebihan dan Keuntungan OVO', style: title3Sans)),
        ],
      ),
      // const SizedBox(height: 7),
      ExpansionTile(
        title: Text("Cara Penggunaan OVO", style: title3Sans),
        children: <Widget>[
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              // contentPadding: EdgeInsets.all(0),
              dense: true,
              title: Text("Cara Penggunaan OVO", style: title3Sans)),
        ],
      ),
      // const SizedBox(height: 7),
      ExpansionTile(
        title: Text("Cara Mengisi Saldo OVO", style: title3Sans),
        children: <Widget>[
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              // contentPadding: EdgeInsets.all(0),
              dense: true,
              title: Text("Cara Mengisi Saldo OVO", style: title3Sans)),
        ],
      ),
      // const SizedBox(height: 7),
      ExpansionTile(
        title: Text("Cara Cek Isi Saldo OVO", style: title3Sans),
        children: <Widget>[
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              // contentPadding: EdgeInsets.all(0),
              dense: true,
              title: Text("Cara Cek Isi Saldo OVO", style: title3Sans)),
        ],
      ),
      // const SizedBox(height: 7),
      ExpansionTile(
        title: Text("Ketentuan Isi Saldo OVO di Payzone", style: title3Sans),
        children: <Widget>[
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              // contentPadding: EdgeInsets.all(0),
              dense: true,
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
      _buildProdukLain()
    ],
  );
}

Widget _buildPaket(context) {
// Container yang menampung opsi Voucher
  return FutureBuilder<void>(
      future: Provider.of<DaftarProdukViewModel>(context, listen: false)
          .getAllDaftarProdukEWallet(),
      builder: (context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final result =
              Provider.of<DaftarProdukViewModel>(context).listProdukEWallet;
          return SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 41),
              Text(
                "Pilih Nominal Voucher : Telkomsel",
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
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    // final result =
                    //     Provider.of<DaftarProdukViewModel>(context).listProdukEWallet;
                    return InkWell(
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 32, left: 12, bottom: 32, right: 12),
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
                              "${result.products![index].label}",
                              // "${produkOvo.title}",
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
                              "${result.products![index].price}",
                              // "${produkOvo.harga}",
                              style: title5Ubuntu,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: result.products!.length,
                ),
              ),
            ]),
            // ],
          );
        }
      });
  // );
}

Widget _buildProdukLain() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        // padding: const EdgeInsets.all(20),
        height: 300,
        width: 4600,
        decoration: BoxDecoration(color: putih),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 14,
          crossAxisSpacing: 10,
          children: List.generate(
            produks.length,
            (index) {
              return CardItem(
                produk: produks[index],
                currentIndex: index,
              );
            },
          ),
        ),
      ),
    ],
  );
}

//produk e-wallet
class Produk {
  final String title;
  final String img;
  const Produk({required this.title, required this.img});
}

List<Produk> produks = <Produk>[
  Produk(title: 'E-Wallet', img: "assets/images/brizzi.png"),
  Produk(title: 'Link Aja', img: "assets/images/link.png"),
  Produk(title: 'ShopeePay', img: "assets/images/shopeePay.png"),
  Produk(title: 'DANA', img: "assets/images/dana.png"),
  Produk(title: 'Go-Pay', img: "assets/images/gopay.png"),
  Produk(title: 'OVO', img: "assets/images/ovo.png"),
];

class CardItem extends StatelessWidget {
  CardItem({Key? key, required this.produk, required this.currentIndex})
      : super(key: key);
  final Produk produk;
  final int currentIndex;
  final _screen = [OVOScreen()];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const SizedBox(height: 20),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: putih,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => _screen[currentIndex]),
                  );
                },
                child: Image.asset(
                  "${produk.img}",
                  width: 29,
                  height: 29,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 11),
        Text(
          "${produk.title}",
          style: title3Sans,
        ),
      ],
    );
  }
}

// produk ovo
// List<ProdukOVO> produksOvo = <ProdukOVO>[
//   ProdukOVO(title: "OVO 20", harga: "Rp. 21.500"),
//   ProdukOVO(title: "OVO 25", harga: "Rp. 26.500"),
//   ProdukOVO(title: "OVO 40", harga: "Rp. 41.500"),
//   ProdukOVO(title: "OVO 50", harga: "Rp. 51.500"),
//   ProdukOVO(title: "OVO 100", harga: "Rp. 101.500"),
//   ProdukOVO(title: "OVO 200", harga: "Rp. 201.500"),
// ];

class ProdukOVO {
  final String title;
  final String harga;
  const ProdukOVO({required this.title, required this.harga});
}

// class CardItemOVO extends StatelessWidget {
//   CardItemOVO({Key? key, required this.produkOvo, required this.index})
//       : super(key: key);
//   final ProdukOVO produkOvo;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<void>(
//         future: Provider.of<DaftarProdukViewModel>(context, listen: false)
//             .getAllDaftarProdukEWallet(),
//         builder: (context, AsyncSnapshot<void> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             final result =
//                 Provider.of<DaftarProdukViewModel>(context).listProdukEWallet;
//             return Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     // Navigator.pushNamed(context, "/pembayaranEWallet", arguments: {
//                     //   "produk": produkOvo,
//                     //   "index": index,
//                     // });
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => PembayaranEWalletScreen(),
//                         ));
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.only(
//                         top: 32, left: 12, bottom: 32, right: 12),
//                     //130x130
//                     height: 145,
//                     width: 145,
//                     decoration: BoxDecoration(
//                         color: putih,
//                         borderRadius: BorderRadius.circular(5),
//                         boxShadow: const [
//                           BoxShadow(color: Colors.grey, blurRadius: 1)
//                         ]),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "${result.products![index].label}",
//                           // "${produkOvo.title}",
//                           style: title4Ubuntu,
//                         ),
//                         const Divider(
//                           color: Colors.grey,
//                           thickness: 1,
//                         ),
//                         Text(
//                           "Harga",
//                           style: title3Sans,
//                         ),
//                         Text(
//                           "${result.products![index].price}",
//                           // "${produkOvo.harga}",
//                           style: title5Ubuntu,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           }
//         });
//   }
// }



                // child: GridView.count(
                //   crossAxisCount: 2,
                //   mainAxisSpacing: 14,
                //   crossAxisSpacing: 10,
                // children: [
                // Container(
                //   padding: const EdgeInsets.only(
                //       top: 32, left: 12, bottom: 32, right: 12),
                //   //130x130
                //   height: 145,
                //   width: 145,
                //   decoration: BoxDecoration(
                //       color: putih,
                //       borderRadius: BorderRadius.circular(5),
                //       boxShadow: const [
                //         BoxShadow(color: Colors.grey, blurRadius: 1)
                //       ]),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "${result.products![index].label}",
                //         // "${produkOvo.title}",
                //         style: title4Ubuntu,
                //       ),
                //       const Divider(
                //         color: Colors.grey,
                //         thickness: 1,
                //       ),
                //       Text(
                //         "Harga",
                //         style: title3Sans,
                //       ),
                //       Text(
                //         "${result.products![index].price}",
                //         // "${produkOvo.harga}",
                //         style: title5Ubuntu,
                //       ),
                //     ],
                //   ),
                // ),
                // ],

                // children: List.generate(
                //   produksOvo.length,
                //   (index) {
                //     return Center(
                //       child: CardItemOVO(
                //         produkOvo: produksOvo[index],
                //         index: index,
                //       ),
                //     );
                //   },
                // ),


              //buat snackbar
              // SnackBar(
              //   content: Text("Mohon isi nomor HP anda"),
              //   backgroundColor: bgTotal,
              //   duration: Duration(seconds: 1),
              // ),
              // Container(
              //   padding: const EdgeInsets.only(
              //       top: 10, bottom: 10, left: 10, right: 10),
              //   height: 80,
              //   width: 360,
              //   color: bgTotal,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Icon(
              //         Icons.close,
              //         size: 15,
              //         color: primaryKuning1,
              //       ),
              //       const SizedBox(width: 10),
              //       Text(
              //         "Sobat Payzone, pembelian saldo OVO akan dikenakan biaya Top Up yang akan dipotong langsung di saldo OVO Cash sesuai dengan ketentuan yang berlaku di OVO",
              //         style: title3Sans,
              //         // textAlign: TextAlign.justify,
              //       ),
              //     ],
              //   ),
              // ),