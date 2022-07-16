import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/list_kategori_produk_model.dart';
import 'package:payzone_2/service/list_produk_kategori_api_services.dart';

class ListKategoriProdukViewModel extends ChangeNotifier {
  List<Datas> _listKategoriProduk = [];
  List<Datas> get listKategoriProduk => _listKategoriProduk;

  Future<void> getAllKategori() async {
    final allDaftarKategori = ListKategoriProdukApiServices();

    try {
      final newAllDaftarKategori = await allDaftarKategori.getKategoriProduk();
      _listKategoriProduk = newAllDaftarKategori ?? [];

      print("hasilviewmodelSuccess: $_listKategoriProduk");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }
    notifyListeners();
  }

  // ListKategoriProdukModel _listKategoriProduk = ListKategoriProdukModel();
  // ListKategoriProdukModel get listKategoriProduk => _listKategoriProduk;

  // Future<void> getAllKategori() async {
  //   final allDaftarKategori = ListKategoriProdukApiServices();

  //   try {
  //     final newAllDaftarKategori = await allDaftarKategori.getKategoriProduk();
  //     _listKategoriProduk = newAllDaftarKategori;

  //     print("hasilviewmodelSuccess: $_listKategoriProduk");
  //   } catch (e) {
  //     print("hasilviewmodelerror: $e");
  //   }
  //   notifyListeners();
  // }
}
