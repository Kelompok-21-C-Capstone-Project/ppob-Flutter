import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminDetailPenjualanScreen extends StatefulWidget {
  const AdminDetailPenjualanScreen({Key? key}) : super(key: key);

  @override
  State<AdminDetailPenjualanScreen> createState() =>
      _AdminDetailPenjualanScreenState();
}

class _AdminDetailPenjualanScreenState
    extends State<AdminDetailPenjualanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Detail Penjualan",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 18),
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
                  // const SizedBox(height: 10),
                  Divider(color: Colors.grey[200]),
                  // const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Penjualan",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Total Komisi",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Total Transaksi",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 473.000",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const SizedBox(height: 5),
                  Divider(color: Colors.grey[200]),
                  // const SizedBox(height: 6),
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
                    "NOTA",
                    style: title9Sans,
                  )),
                  DataColumn(
                      label: Text(
                    "WAKTU",
                    style: title9Sans,
                  ))
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          "IV06001A",
                          style: title3Sans,
                        ),
                      ),
                      DataCell(
                        Column(
                          children: [
                            Text(
                              "Order : 01/06/2022 23:59",
                              style: title3Sans,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Bayar : 02/06/2022 01:59",
                              style: title3Sans,
                            )
                          ],
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
