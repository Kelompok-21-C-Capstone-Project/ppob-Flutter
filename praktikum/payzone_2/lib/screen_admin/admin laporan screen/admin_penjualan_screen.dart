import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminPenjualanScreen extends StatefulWidget {
  const AdminPenjualanScreen({Key? key}) : super(key: key);

  @override
  State<AdminPenjualanScreen> createState() => _AdminPenjualanScreenState();
}

class _AdminPenjualanScreenState extends State<AdminPenjualanScreen> {
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
            Row(
              children: [
                Text(
                  "Periode : ",
                  style: title10Sans,
                ),
                Row(
                  children: [
                    ChoiceChip(
                      label: Text(
                        "Harian",
                        style: title3Sans,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      selected: true,
                      backgroundColor: putih,
                    )

                    // Container(
                    //   height: 36,
                    //   width: 220,
                    //   child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: _options.length,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //           width: 70,
                    //           // margin: const EdgeInsets.only(right: 8),
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(8),
                    //             border: Border.all(
                    //               color: Colors.grey,
                    //             ),
                    //           ),
                    //           child: Center(
                    //             child: Text(
                    //               _options[index],
                    //               style: title3Sans,
                    //             ),
                    //           ),
                    //         );
                    //       }),
                    // ),
                    // const SizedBox(width: 15),
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     child: FittedBox(
                    //         child: Text(
                    //       "Harian",
                    //       style: title3Sans,
                    //     ))),
                    // const SizedBox(width: 15),
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     child: FittedBox(
                    //         child: Text(
                    //       "Mingguan",
                    //       style: title3Sans,
                    //     ))),
                    // const SizedBox(width: 15),
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     child: FittedBox(
                    //         child: Text(
                    //       "Bulanan",
                    //       style: title3Sans,
                    //     ))),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(26),
              height: 189,
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
                    "Periode Harian",
                    style: title10Sans,
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.grey[200]),
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
                  // const SizedBox(height: 10),
                  Divider(color: Colors.grey[200]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Transaksi",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "76",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Produk",
                            style: unactive2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23",
                            style: title4Ubuntu,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[200]),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 313,
              height: 373,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      "WAKTU",
                      style: title9Sans,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "PENJUALAN (RP)",
                      style: title9Sans,
                    ),
                  ),
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
                          "807.500",
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
                          "807.500",
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
                          "807.500",
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
                          "807.500",
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
                          "807.500",
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
