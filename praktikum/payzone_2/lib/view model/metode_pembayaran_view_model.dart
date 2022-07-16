import 'package:flutter/material.dart';
import 'package:payzone_2/model/metode_pembayaran_model.dart';
import 'package:payzone_2/service/metode_pembayaran_api_services.dart';

class MetodePembayaranViewModel extends ChangeNotifier {
  // List<Services> _resultMetodePembayaran = [];
  // List<Services> get resultMetodePembayaran => _resultMetodePembayaran;
  // Future<void> getAllResultMetodePembayaran() async {
  //   final metode = MetodePembayaranApiServices();

  //   try {
  //     final newResultMetodePembayaran = await metode.getMetode();

  //     _resultMetodePembayaran = newResultMetodePembayaran ?? [];

  //     print("hasilviewmodelSuccess: $_resultMetodePembayaran");
  //   } catch (e) {
  //     print("hasilviewmodelerror: $e");
  //   }

  //   notifyListeners();
  // }

  MetodePembayaranModel _listMetode = MetodePembayaranModel();
  MetodePembayaranModel get listMetode => _listMetode;

  Future<void> getAllDaftarProdukEWallet() async {
    final allListMethod = MetodePembayaranApiServices();

    try {
      final newAllMethod = await allListMethod.getMetode();
      _listMetode = newAllMethod;

      print("hasilviewmodelSuccess: $_listMetode");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }
    notifyListeners();
  }
}
