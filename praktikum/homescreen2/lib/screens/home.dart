import 'package:flutter/material.dart';
import 'package:homescreen2/screens/produk.dart';

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
  Produk(title: 'Internet dan Tv Kabel', icon: Icons.cable),
];

// class Home extends StatelessWidget {
//   // Produk produk;
//   Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.count(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         children: [
//           // List.generate(produks.length, (index) {
//           //   return Center(
//           //     child: CardItem(produk: produks[index]),
//           //   );
//           // }),
//         ],
//       ),

// body: ListView.separated(
//   itemCount: produkList.length,
//   itemBuilder: (context, index) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage: NetworkImage('${produkList[index].image}'),
//       ),
//       title: Text('${produkList[index].nama}'),
//       onTap: () {},
//     );
//   },
//   separatorBuilder: (BuildContext context, int index) {
//     return Divider();
//   },
// ),
// body: ListView.builder(
//   itemCount: produk.produkList.length,
//   itemBuilder: (context, index) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage:
//             NetworkImage('${produk.produkList[index].image}'),
//       ),
//       title: Text('${produk.produks[index].nama}'),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => Produk(
//               produk: produk.produkList[index],
//             ),
//           ),
//         );
//       },
//     );
//   },
// ),

// body: GridView.count(
//   //cross axis count : nilai untuk jumlah column pada grid
//   crossAxisCount: 3,
//   padding: const EdgeInsets.all(8),
//   children: List.generate(200, (index) {
//     return Card(
//       margin: const EdgeInsets.all(8),
//       child: InkWell(
//         child: Column(
//           children: const [
//             Icon(
//               Icons.home,
//             ),
//           ],
//         ),
//       ),
//     );
//   }),
// ),
//     );
//   }
// }

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.produk}) : super(key: key);
  final Produk produk;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(
                  produk.icon,
                  size: 10,
                  color: Colors.white,
                ),
              ),
              Text(produk.title, style: TextStyle(color: Colors.black)),
            ],
          ),
        ));
  }
}

// class Tampilan extends StatelessWidget {
//   final Produk produks;
//   const Tampilan({Key? key, required this.produks}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//       color: Colors.grey,
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//                 child: Icon(
//               produks.icon,
//               size: 50,
//               color: Colors.white,
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             color: Colors.white,
//             padding: const EdgeInsets.all(10),
//             height: 100,
//             child: ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Container(
//                     child: InkWell(
//                       child: Column(
//                         children: [],
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: 6),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        // child: Container(
        //   child: Column(
        //     children: [
        //       Stack(
        //         children: [
        //           Container(
        //             height: height * 0.3,
        //             width: width,
        //             decoration: BoxDecoration(
        //               color: Colors.grey,
        //             ),
        //           ),
        //           Positioned(
        //             bottom: 10,
        //             left: 10,
        //             right: 10,
        //             top: 10,
        //             child: Container(
        //               alignment: Alignment.center,
        //               width: width,
        //               height: 200,
        //               decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(20),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

//       // body: Container(
//       //   decoration: BoxDecoration(
//       //     color: Colors.grey,
//       //   ),
//       //   child: ListView(
//       //     children: [
//       //       // produk(),
//       //     ],
//       //   ),
//       // ),

//       // child: Container(
//       //   child: Column(
//       //     children: [
//       //       Container(
//       //         color: Colors.grey[300],
//       //         padding: const EdgeInsets.all(10),
//       //         height: 200,
//       //         child: ListView.builder(
//       //             itemBuilder: (context, index) {
//       //               return Container(
//       //                 // margin: const EdgeInsets.symmetric(horizontal: 10),
//       //                 child: Column(
//       //                   children: [
//       //                     Container(
//       //                       margin: EdgeInsets.all(15),
//       //                       height: 300,
//       //                       decoration: BoxDecoration(
//       //                           color: Colors.white,
//       //                           borderRadius: BorderRadius.circular(15)),
//       //                     )
//       //                   ],
//       //                 ),
//       //               );
//       //             },
//       //             itemCount: 6),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//colum punya 2 anak container abu, putih
// body : sfaffold, stack - children 1. Column, children Column Container abu abu dan putih, children 1 lagi stack : Widget Card , position = card
        child: Container(
            height: size.height * 0.2,
            child: Stack(children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  alignment: Alignment.center,
                  // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  margin: EdgeInsets.all(20),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ])));
  }
}

//       // child: Container(
//       //   alignment: Alignment.center,
//       //   padding: EdgeInsets.symmetric(horizontal: 20),
//       //   margin: EdgeInsets.symmetric(horizontal: 20),
//       //   height: 300,
//       //   decoration: BoxDecoration(
//       //     color: Colors.white,
//       //     borderRadius: BorderRadius.circular(20),
//       //   ),
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [],
//       //   ),
//       // ),
//       // ),
// //           ],
// //         ),
// //       ),
//     );
//   }

//   Widget produk() {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.only(top: 20, left: 20, right: 20),
//           height: 300,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(15)),
//         )
//       ],
//     );
//   }
// }
