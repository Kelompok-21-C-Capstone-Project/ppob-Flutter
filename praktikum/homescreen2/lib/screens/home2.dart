import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homescreen2/screens/detailPDAM.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // child: GridView.builder(
      //     gridDelegate:
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //     itemBuilder: (context, index) {
      //       return InkWell(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Card(
      //               color: Colors.grey,
      //               child: Center(
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: [
      //                     Expanded(
      //                       child: Icon(
      //                         produks[index].icon,
      //                         size: 10,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Text(produks[index].title,
      //                         style: TextStyle(color: Colors.black)),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }),

      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      // List.generate(produks.length, (index) {
      //   return Center(
      //     child: CardItem(produk: produks[index]),
      //   );
      // }),
      //   ],
      // ),

      body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (contex, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailProdukPDAM();
                }));
              },
              child: ListTile(
                leading: Icon(produks[index].icon),
                title: Text(produks[index].title),
              ),
            );
          },
          separatorBuilder: (contex, index) {
            return Divider();
          },
          itemCount: produks.length),
    );
  }
}

class Produk {
  final String title;
  final IconData icon;
  const Produk({required this.title, required this.icon});
}

List<Produk> produks = <Produk>[
  Produk(title: 'E-Wallet', icon: Icons.account_balance_wallet),
  Produk(title: 'PDAM', icon: Icons.water_drop),
  Produk(title: 'Paket Data', icon: Icons.network_cell),
  Produk(title: 'Pulsa', icon: Icons.phone),
  Produk(title: 'PLN', icon: Icons.storm),
  Produk(title: 'Internet dan TV Kabel', icon: Icons.cable),
];

// class CardItem extends StatelessWidget {
//   const CardItem({Key? key, required this.produk}) : super(key: key);
//   final Produk produk;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         color: Colors.grey,
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Icon(
//                   produk.icon,
//                   size: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Text(produk.title, style: TextStyle(color: Colors.black)),
//             ],
//           ),
//         ));
//   }
// }
