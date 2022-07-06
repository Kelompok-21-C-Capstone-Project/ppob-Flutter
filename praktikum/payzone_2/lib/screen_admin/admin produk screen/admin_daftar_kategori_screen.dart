import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminDaftarKategori extends StatefulWidget {
  const AdminDaftarKategori({Key? key}) : super(key: key);

  @override
  State<AdminDaftarKategori> createState() => _AdminDaftarKategoriState();
}

class _AdminDaftarKategoriState extends State<AdminDaftarKategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Produk",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
              height: 28,
              width: 128,
              decoration: BoxDecoration(
                color: primaryKuning1,
                borderRadius: BorderRadius.circular(2),
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
            const SizedBox(height: 20),
            Container(
              width: 312,
              height: 643,
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                    label: Text(
                  "NO",
                  style: title9Sans,
                )),
                DataColumn(
                    label: Text(
                  "NAMA KATEGORI",
                  style: title9Sans,
                )),
              ], rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        "1",
                        style: title3Sans,
                      ),
                    ),
                    DataCell(
                      Text(
                        "Paket Data",
                        style: title3Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        "2",
                        style: title3Sans,
                      ),
                    ),
                    DataCell(
                      Text(
                        "Paket Data",
                        style: title3Sans,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        "3",
                        style: title3Sans,
                      ),
                    ),
                    DataCell(
                      Text(
                        "Paket Data",
                        style: title3Sans,
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
