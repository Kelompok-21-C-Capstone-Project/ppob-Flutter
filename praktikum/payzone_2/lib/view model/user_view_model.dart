import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/hapus_akun_model.dart';
import 'package:payzone_2/model/user_token_model.dart';
import 'package:payzone_2/model/login_model.dart';
import 'package:payzone_2/model/registrasi_model.dart';
import 'package:payzone_2/model/user_akun_model.dart';
import 'package:payzone_2/service/user_api_services.dart';

class UserViewModel extends ChangeNotifier {
  // tokenData
  TokenModel _tokenModel = TokenModel();
  TokenModel get tokenModel => _tokenModel;
  Future<void> tokenize(String token) async {
    final getTokenData = UserApiServices();
    try {
      final tokenData = await getTokenData.tokenize(token);
      _tokenModel = tokenData;
      print("token berhasil di enkripsi");
    } catch (e) {
      print("hasil eror get user : $e");
    }
    notifyListeners();
  }

  // login
  LoginModel _resultUser = LoginModel();
  LoginModel get resultUser => _resultUser;
  Future<void> loginUser(String identifier, String password) async {
    final getAllUser = UserApiServices();

    try {
      final newResultUser = await getAllUser.login(identifier, password);
      _resultUser = newResultUser;
      print("hasil sukses get user : ${_resultUser.token}");
    } catch (e) {
      print("hasil eror get user : $e");
    }
    notifyListeners();
  }

  //regis
  RegistrasiModel _resultRegis = RegistrasiModel();
  RegistrasiModel get resultRegis => _resultRegis;
  Future<void> regisUser(String email, String name, String password,
      String phone, String username) async {
    final getAllUserRegis = UserApiServices();

    try {
      final newResultRegis =
          await getAllUserRegis.regis(email, name, password, phone, username);
      _resultRegis = newResultRegis;
      print("hasil sukses regis : $_resultRegis");
    } catch (e) {
      print("hasil eror regis : $e");
    }
    notifyListeners();
  }

  // get akun
  AkunModel _resultAkun = AkunModel();
  AkunModel get resultAkun => _resultAkun;
  Future<void> userAkun(String userId, String token) async {
    final getAllUserAkun = UserApiServices();

    try {
      final newResultAkunUser = await getAllUserAkun.akun(userId, token);
      _resultAkun = newResultAkunUser;
      print("hasil sukses  : $_resultAkun");
    } catch (e) {
      print("hasil eror  : $e");
    }
    notifyListeners();
  }

  // logout

  HapusAkunModel _resultHapusAkun = HapusAkunModel();
  HapusAkunModel get resultHapusAkun => _resultHapusAkun;
  Future<void> userHapusAkun(String idAkun, String token) async {
    final getAllHapusUserAkun = UserApiServices();

    try {
      final newResultHapusAkunUser =
          await getAllHapusUserAkun.hapusAkun(idAkun, token);
      _resultHapusAkun = newResultHapusAkunUser;
      print("hasil sukses regis : $_resultHapusAkun");
    } catch (e) {
      print("hasil eror regis : $e");
    }
    notifyListeners();
  }
}
