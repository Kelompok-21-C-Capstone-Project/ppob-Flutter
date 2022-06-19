import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<String> history = ["Berhasil", "Pending", "Gagal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Topup E-Wallet",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontFamily: GoogleFonts.ptSans().fontFamily,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Status : ",
              style: TextStyle(
                  fontFamily: GoogleFonts.ptSans().fontFamily,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            _buildHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildHistory() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: history.length,
        itemBuilder: (context, index) {
          return HistoryCard(historys: history[index]);
        },
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String historys;
  const HistoryCard({Key? key, required this.historys}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(historys),
    );
  }
}
