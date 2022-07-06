import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/user_model.dart';
import 'package:payzone_2/service/login_api_services.dart';

class LoginViewModel extends ChangeNotifier {
  UserModel _resultUser = UserModel();
  UserModel get resultUser => _resultUser;
  Future<void> login(String email, String password) async {
    final getAllUser = LoginApiServices();

    try {
      final newResultUser = await getAllUser.login(email, password);
      _resultUser = newResultUser;
      print("hasil sukses login : $_resultUser");
    } catch (e) {
      print("hasil eror login : $e");
    }
    notifyListeners();
  }
}
