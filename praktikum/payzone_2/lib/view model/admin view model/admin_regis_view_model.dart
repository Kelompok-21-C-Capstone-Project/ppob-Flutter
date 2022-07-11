import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/admin%20model/admin_akun_model.dart';
import 'package:payzone_2/service/admin%20services/admin_regis_api_services.dart';

class AdminRegisViewModel extends ChangeNotifier {
  AdminAkunModel _resultAdminRegis = AdminAkunModel();
  AdminAkunModel get resultAdminRegis => _resultAdminRegis;
  Future<void> regisUser(String email, String key, String name, String password,
      String phone, String username) async {
    final getAllAdminRegis = AdminRegisApiServices();

    try {
      final newResultAdminRegis = await getAllAdminRegis.adminRegis(
          email, key, name, password, phone, username);
      _resultAdminRegis = newResultAdminRegis;
      print("hasil sukses regis : $_resultAdminRegis");
    } catch (e) {
      print("hasil eror regis : $e");
    }
    notifyListeners();
  }
}
