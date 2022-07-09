import 'package:flutter/material.dart';
import 'package:payzone_2/model/client_daftar_produk_e_wallet_model.dart';
import 'package:payzone_2/model/client_daftar_produk_paket_data_model.dart';
import 'package:payzone_2/model/client_daftar_produk_pdam_model.dart';
import 'package:payzone_2/service/client_daftar_produk_api_services.dart';

class DaftarProdukViewModel extends ChangeNotifier {
  DaftarProdukEWalletModel _listProdukEWallet = DaftarProdukEWalletModel();
  DaftarProdukEWalletModel get listProdukEWallet => _listProdukEWallet;

  Future<void> getAllDaftarProdukEWallet() async {
    final allDaftarProdukEWallet = DaftarProdukApiServices();

    try {
      final newAllProdukEWallet =
          await allDaftarProdukEWallet.daftarProdukEWallet();
      _listProdukEWallet = newAllProdukEWallet;

      print("hasilviewmodelSuccess: $_listProdukEWallet");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }
    notifyListeners();
  }

  DaftarProdukPdamModel _listProdukPdam = DaftarProdukPdamModel();
  DaftarProdukPdamModel get listProdukPdam => _listProdukPdam;

  Future<void> getAllDaftarProdukPdam() async {
    final allDaftarProdukPdam = DaftarProdukApiServices();

    try {
      final newAllProdukPdam = await allDaftarProdukPdam.daftarProdukPdam();
      _listProdukPdam = newAllProdukPdam;

      print("hasilviewmodelSuccess: $_listProdukPdam");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }
    notifyListeners();
  }

  DaftarProdukPaketDataModel _listProdukPaketData =
      DaftarProdukPaketDataModel();
  DaftarProdukPaketDataModel get listProdukPaketData => _listProdukPaketData;

  Future<void> getAllDaftarProdukPaketData() async {
    final allDaftarProdukPaketData = DaftarProdukApiServices();

    try {
      final newAllProdukPaketData =
          await allDaftarProdukPaketData.daftarProdukPaketData();
      _listProdukPaketData = newAllProdukPaketData;

      print("hasilviewmodelSuccess: $_listProdukPaketData");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }
    notifyListeners();
  }
}
