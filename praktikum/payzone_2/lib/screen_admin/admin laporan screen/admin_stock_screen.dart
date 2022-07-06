import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminStockScreen extends StatefulWidget {
  const AdminStockScreen({Key? key}) : super(key: key);

  @override
  State<AdminStockScreen> createState() => _AdminStockScreenState();
}

class _AdminStockScreenState extends State<AdminStockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Stock",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            //nanti pasang date pecker
            Container(
              // margin:
              // const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
              height: 24,
              width: 182,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 1)
                  ]),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Icon(
                    Icons.calendar_today,
                    size: 12,
                    color: icon,
                  ),
                  const SizedBox(width: 13),
                  Text(
                    "01 Jun 2022 - 30 Jun 2022",
                    style: title3Sans,
                  ),
                  const SizedBox(width: 13),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 12,
                    color: icon,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  height: 28,
                  width: 148,
                  decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Semua Status Bayar",
                        style: unactive,
                      ),
                      const SizedBox(width: 23),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 12,
                        color: icon,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  height: 28,
                  width: 148,
                  decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Semua Kategori",
                        style: unactive,
                      ),
                      const SizedBox(width: 23),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 12,
                        color: icon,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(26),
              height: 132,
              width: 312,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 2)
                  ]),
              child: Column(
                children: [
                  Text(
                    "Detail Penjualan",
                    style: title10Sans,
                  ),
                  Text("Detail Column Penjualan")
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 312,
              height: 465,
              child: DataTable(
                // headingRowColor:
                //     MaterialStateColor.resolveWith((states) => icon),
                columns: <DataColumn>[
                  DataColumn(
                      label: Text(
                    "TANGGAL",
                    style: title9Sans,
                  )),
                  DataColumn(
                      label: Text(
                    "NO. FAKTUR",
                    style: title9Sans,
                  ))
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "01 Juni 2022",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Text(
                          "FA/220611/1HX",
                          style: title3Sans,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
