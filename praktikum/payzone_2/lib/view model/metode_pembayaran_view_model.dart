import 'package:flutter/material.dart';
import 'package:payzone_2/model/metode_pembayaran_model.dart';
import 'package:payzone_2/service/metode_pembayaran_api_services.dart';

class MetodePembayaranViewModel extends ChangeNotifier {
  List<Services> _resultMetodePembayaran = [];
  List<Services> get resultMetodePembayaran => _resultMetodePembayaran;
  Future<void> getAllResultMetodePembayaran() async {
    final metode = MetodePembayaranApiServices();

    try {
      final newResultMetodePembayaran = await metode.getMetode();

      _resultMetodePembayaran = newResultMetodePembayaran ?? [];

      print("hasilviewmodelSuccess: $_resultMetodePembayaran");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }

    notifyListeners();
  }
}
