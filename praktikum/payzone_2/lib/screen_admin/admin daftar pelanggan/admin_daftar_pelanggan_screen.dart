import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminDaftarPelangganScreen extends StatefulWidget {
  const AdminDaftarPelangganScreen({Key? key}) : super(key: key);

  @override
  State<AdminDaftarPelangganScreen> createState() =>
      _AdminDaftarPelangganScreenState();
}

class _AdminDaftarPelangganScreenState
    extends State<AdminDaftarPelangganScreen> {
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  width: 312,
                  height: 835,
                  child: DataTable(columns: <DataColumn>[
                    DataColumn(
                        label: Text(
                      "ID PELANGGAN",
                      style: title9Sans,
                    )),
                    DataColumn(
                        label: Text(
                      "NAMA",
                      style: title9Sans,
                    )),
                  ], rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            "0932j1q134",
                            style: title3Sans,
                          ),
                        ),
                        DataCell(
                          Text(
                            "Derry",
                            style: title3Sans,
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            "0932j1q134",
                            style: title3Sans,
                          ),
                        ),
                        DataCell(
                          Text(
                            "Derry",
                            style: title3Sans,
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            "0932j1q134",
                            style: title3Sans,
                          ),
                        ),
                        DataCell(
                          Text(
                            "Derry",
                            style: title3Sans,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ],
            )));
  }
}
