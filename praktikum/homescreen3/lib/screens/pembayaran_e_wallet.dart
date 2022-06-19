import 'package:flutter/material.dart';

class PembayaranEWalletScreen extends StatefulWidget {
  const PembayaranEWalletScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranEWalletScreen> createState() =>
      _PembayaranEWalletScreenState();
}

class _PembayaranEWalletScreenState extends State<PembayaranEWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 160,
                  width: 330,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Detail Pembayaran",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 24),
                      Text("Nama Produk"),
                      Text("Nomor Handphone"),
                      Text("Harga"),
                      Text("Biaya Admin"),
                      SizedBox(height: 10),
                      Text("Total Pembayaran")
                    ],
                  ),
                ),

                //dropdown + radio button
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 350,
                  width: 330,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Pilih Metode Pembayaran",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 24),
                      Text("Virtual Acccount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      ListTile(
                        title: Text("BCA Virtual Account"),
                      ),
                      ListTile(
                        title: Text("Mandiri Virtual Account"),
                      ),
                      SizedBox(height: 10),
                      Text("Cashless E-Money",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      ListTile(
                        title: Text("Gopay"),
                      ),
                      ListTile(
                        title: Text("OVO"),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 330,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Bayar Sekarang"))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class PembayaranEWalletScreen extends StatefulWidget {
//   const PembayaranEWalletScreen({Key? key}) : super(key: key);

//   @override
//   State<PembayaranEWalletScreen> createState() =>
//       _PembayaranEWalletScreenState();
// }

// class _PembayaranEWalletScreenState extends State<PembayaranEWalletScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Pembayaran",
//           style: Theme.of(context).textTheme.caption!.copyWith(
//                 color: Colors.black,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(color: Colors.white),
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.all(20),
//                   height: 100,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         child: Column(
//                           children: [
//                             Text(
//                               "Detail Pembayaran",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 20),
//                             Text("Jumlah Pembayaran"),
//                             Text("Biaya Admin"),
//                             SizedBox(height: 10),
//                             Text("Total Pembayaran")
//                           ],
//                         ),
//                       ),
//                       // metode pembayaran menggunakan dropdown dan button opsi
//                       Container(
//                         child: Column(
//                           children: [
//                             Text(
//                               "Pilih Metode Pembayaran",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 20),
//                             Text("Jumlah Pembayaran"),
//                             Text("Biaya Admin"),
//                             SizedBox(height: 10),
//                             Text("Total Pembayaran")
//                           ],
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(color: Colors.white),
//                         padding: EdgeInsets.all(10),
//                         margin: EdgeInsets.all(20),
//                         height: 120,
//                         width: 400,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Total Pembayaran",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 10),
//                             ElevatedButton(
//                               onPressed: () {},
//                               child: Text("Bayar Sekarang"),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
