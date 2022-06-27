import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    // List<String> status = ["Selesai", "Pending", "Gagal"];
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Riwayat Transaksi", style: appBar),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Status : ", style: title2Sans),
                Row(
                  children: [_buildStatusCard()],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 3)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("30/MEI/2022  19.40 WIB", style: title3Ubuntu),
                  Text("OVO 20.000 (08313298343)", style: title9Sans),
                  Text("Order ID : Payzone_71203829", style: title1Sans),
                  Text("Rp. 21.500", style: title9Sans),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard() {
    return Container(
      // alignment: Alignment.center,
      // margin: EdgeInsets.only(left: 15.0),
      // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 30,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            // height: 35,
            child: FilterChip(
                elevation: 0,
                label: Text("Selesai", style: title2Sans),
                onSelected: (value) {}),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            // height: 35,
            child: FilterChip(
                elevation: 0,
                label: Text("Pending", style: title2Sans),
                onSelected: (value) {}),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            // height: 35,
            child: FilterChip(
                elevation: 0,
                label: Text("Gagal", style: title2Sans),
                onSelected: (value) {}),
          ),
        ],
      ),
    );
  }
}
