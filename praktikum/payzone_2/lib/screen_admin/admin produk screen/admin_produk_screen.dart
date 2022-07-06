import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';

class AdminProdukScreen extends StatelessWidget {
  const AdminProdukScreen({Key? key}) : super(key: key);

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
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/adminDaftarKategori");
              },
              child: Container(
                height: 55,
                width: 312,
                decoration: BoxDecoration(
                    color: putih,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 3)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 41,
                      height: 41,
                      // padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(
                          top: 7, left: 24, bottom: 7, right: 24),
                      decoration: BoxDecoration(
                          color: primaryKuning1,
                          borderRadius: BorderRadius.circular(10),
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
                        const SizedBox(height: 11),
                        Text(
                          "Daftar Kategori",
                          style: title11Sans,
                        ),
                        Text(
                          "Lihat History Daftar Kategori",
                          style: title3Sans,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 55,
              width: 312,
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 3)
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 41,
                    height: 41,
                    // padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                        top: 7, left: 24, bottom: 7, right: 24),
                    decoration: BoxDecoration(
                        color: primaryKuning1,
                        borderRadius: BorderRadius.circular(10),
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
                      const SizedBox(height: 11),
                      Text(
                        "Daftar Produk",
                        style: title11Sans,
                      ),
                      Text(
                        "Lihat History Daftar Produk",
                        style: title3Sans,
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
