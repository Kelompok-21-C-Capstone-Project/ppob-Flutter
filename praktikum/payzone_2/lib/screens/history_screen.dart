import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/history_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryScreen extends StatefulWidget {
  final String? userById;
  final String? token;
  const HistoryScreen({Key? key, this.userById, this.token}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late SharedPreferences logindata;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    String token = "";
    String akunId = "";
    logindata = await SharedPreferences.getInstance();

    setState(() {
      token = logindata.getString("token").toString();
      print("token $token");
      akunId = logindata.getString("id").toString();
      print("id : $akunId");
    });
  }

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<HistoryViewModel>(context);
    // print("print user id : ${widget.userById}");
    return Scaffold(
        backgroundColor: putih,
        appBar: AppBar(
          backgroundColor: putih,
          title: Text("Riwayat Transaksi", style: appBar),
          centerTitle: true,
        ),
        body:
            // FutureBuilder<void>(
            //     future: viewModel.getAllResultHistory(
            //         widget.userById.toString(), widget.token.toString()),
            //     builder: (context, AsyncSnapshot<void> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       } else {
            //         final result = viewModel.resultsHistoryId;
            //         print("print result : $result");
            //         var index;
            //         return
            SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Status : ", style: title10Sans),
                  Row(
                    children: [_buildStatusCard()],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/historyDetail");
                },
                child: Container(
                  height: 98,
                  width: 312,
                  decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 3)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 41,
                        height: 41,
                        decoration: BoxDecoration(
                            color: primaryKuning1,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, blurRadius: 2)
                            ]),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 25,
                          color: onPrimary,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 7),
                          Container(
                            width: 61,
                            height: 21,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryKuning1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              // "${result[index].status}",
                              "Pending",
                              style: pending,
                              textAlign: TextAlign.center,
                            ),
                            // child: Text(
                            //   "Selesai",
                            //   style: selesai,
                            //   textAlign: TextAlign.center,
                            // ),
                          ),
                          const SizedBox(height: 2),
                          // Text("${result[index].createdAt}",
                          //     style: title3Sans),
                          // Text("${result[index].label}",
                          //     style: title11Sans),
                          // Text("${result[index].id}",
                          //     style: title3Sans),
                          // Text("${result[index].price}",
                          //     style: title11Sans),
                          Text("30/MEI/2022  19.40 WIB", style: title3Sans),
                          Text("OVO 20.000 (08313298343)", style: title11Sans),
                          Text("Order ID : Payzone_71203829",
                              style: title3Sans),
                          Text("Rp. 21.500", style: title11Sans),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
//             ));
//   }
// }

Widget _buildStatusCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    height: 30,
    width: 267,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 65,
          height: 21,
          child: FilterChip(
              backgroundColor: putih,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: variant),
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              label: Text(
                "Selesai",
                style: selesai,
                textAlign: TextAlign.center,
              ),
              onSelected: (value) {}),
        ),
        Container(
          width: 65,
          height: 21,
          child: FilterChip(
              backgroundColor: putih,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primaryKuning1),
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              label: Text(
                "Pending",
                style: pending,
                textAlign: TextAlign.center,
              ),
              onSelected: (value) {}),
        ),
        Container(
          // padding: const EdgeInsets.all(2),
          width: 65,
          height: 21,
          child: FilterChip(
              backgroundColor: putih,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: eror),
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              label: Text(
                "Gagal",
                style: gagal,
                textAlign: TextAlign.center,
              ),
              onSelected: (value) {}),
        ),
      ],
    ),
  );
}

// class HistoryScreen extends StatefulWidget {
//   final int? userTransactionId;
//   const HistoryScreen({Key? key, this.userTransactionId}) : super(key: key);

//   @override
//   State<HistoryScreen> createState() => _HistoryScreenState();
// }

// class _HistoryScreenState extends State<HistoryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // List<String> status = ["Selesai", "Pending", "Gagal"];
//     final viewModel = Provider.of<PayzoneViewModel>(context);
//     return Scaffold(
//       backgroundColor: putih,
//       appBar: AppBar(
//         backgroundColor: putih,
//         title: Text("Riwayat Transaksi", style: appBar),
//         centerTitle: true,
//       ),
//       body: FutureBuilder<void>(
//           future: viewModel.getAllTransactionById(1),
//           builder: (context, snapshot) {
//             return SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text("Status : ", style: title10Sans),
//                       Row(
//                         children: [_buildStatusCard()],
//                       ),
//                     ],
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, "/historyDetail");
//                     },
//                     child: Container(
//                       height: 98,
//                       width: 312,
//                       decoration: BoxDecoration(
//                           color: putih,
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: const [
//                             BoxShadow(color: Colors.grey, blurRadius: 3)
//                           ]),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.all(8),
//                             width: 41,
//                             height: 41,
//                             decoration: BoxDecoration(
//                                 color: primaryKuning1,
//                                 borderRadius: BorderRadius.circular(3),
//                                 boxShadow: const [
//                                   BoxShadow(color: Colors.grey, blurRadius: 2)
//                                 ]),
//                             child: Icon(
//                               Icons.account_balance_wallet_outlined,
//                               size: 25,
//                               color: onPrimary,
//                             ),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const SizedBox(height: 7),
//                               Container(
//                                 width: 61,
//                                 height: 21,
//                                 padding: const EdgeInsets.all(2),
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: variant),
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                                 child: Text(
//                                   "Selesai",
//                                   style: selesai,
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                               const SizedBox(height: 2),
//                               Text("30/MEI/2022  19.40 WIB", style: title3Sans),
//                               Text("OVO 20.000 (08313298343)",
//                                   style: title11Sans),
//                               Text("Order ID : Payzone_71203829",
//                                   style: title3Sans),
//                               Text("Rp. 21.500", style: title11Sans),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
