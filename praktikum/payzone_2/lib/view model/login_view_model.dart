import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/user_model.dart';
import 'package:payzone_2/service/login_api_services.dart';

class LoginViewModel extends ChangeNotifier {
  UserModel _resultUser = UserModel();
  UserModel get resultUser => _resultUser;
  Future<void> login(String id, password) async {
    final getAllUser = LoginApiServices();

    try {
      final newResultUser = await getAllUser.login(id, password);
      _resultUser = newResultUser;
      print("hasil sukses all product : $_resultUser");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }
}
