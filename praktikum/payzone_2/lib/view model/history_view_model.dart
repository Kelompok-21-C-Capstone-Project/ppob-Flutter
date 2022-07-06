import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/history_model.dart';
import 'package:payzone_2/service/history_api_services.dart';

class HistoryViewModel extends ChangeNotifier {
  HistoryModel _resultHistory = HistoryModel();
  HistoryModel get resultHistory => _resultHistory;

  Future<void> history(String id) async {
    final getAllHistory = HistoryApiServices();

    try {
      final newResultHistory = await getAllHistory.getAllHistory(id);
      _resultHistory = newResultHistory;
      print("hasil sukses login : $_resultHistory");
    } catch (e) {
      print("hasil eror login : $e");
    }
    notifyListeners();
  }
}
