import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminDaftarProduk extends StatelessWidget {
  const AdminDaftarProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Daftar Produk",
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
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  height: 28,
                  width: 118,
                  decoration: BoxDecoration(
                    color: primaryKuning1,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        size: 10,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 13),
                      Text("Tambah Stock", style: title3Sans)
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  height: 28,
                  width: 118,
                  decoration: BoxDecoration(
                    color: primaryKuning1,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        size: 10,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 13),
                      Text("Tambah Kategori", style: title3Sans)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Pengaturan Status",
              style: title14Sans,
            ),
            Container(
              width: 312,
              height: 643,
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                    label: Text(
                  "STATUS",
                  style: title9Sans,
                )),
                DataColumn(
                    label: Text(
                  "PRODUK",
                  style: title9Sans,
                )),
              ], rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    // Icon(Icons.check, color: primaryKuning1),
                    DataCell(Icon(
                      Icons.check,
                      color: icon,
                    )),
                    DataCell(
                      Text(
                        "Freedom U 30GB / 28 Hari",
                        style: title7Sans,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
