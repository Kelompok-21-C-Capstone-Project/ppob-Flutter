import 'package:dio/dio.dart';
import 'package:payzone_2/model/hapus_akun_model.dart';
import 'package:payzone_2/model/registrasi_model.dart';
import 'package:payzone_2/model/user_akun_model.dart';
import '../model/login_model.dart';

class UserApiServices {
  //login
  Future<LoginModel> login(String identifier, String password) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response =
          await _dio.post("https://payzone.herokuapp.com/v1/auth", data: {
        "identifier": identifier,
        "password": password,
      });
      final resLogin = LoginModel.fromJson(response.data);
      return resLogin;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

// regis
  Future<RegistrasiModel> regis(String email, String name, String password,
      String phone, String username) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .post("https://payzone.herokuapp.com/v1/user_register", data: {
        "email": email,
        "name": name,
        "password": password,
        "phone": phone,
        "username": username,
      });
      final resRegistrasi = RegistrasiModel.fromJson(response.data);
      return resRegistrasi;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  // get akun
  Future<AkunModel> akun(String idAkun, String token) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.get(
          "https://payzone.herokuapp.com/v1/users/$idAkun",
          options: Options(headers: {"token": token}));
      final resAkun = AkunModel.fromJson(response.data);
      return resAkun;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  // logout
  Future<HapusAkunModel> hapusAkun(String akunId, String token) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.delete(
          "https://payzone.herokuapp.com/v1/users/$akunId",
          options: Options(headers: {"token": token}));
      final resHapusAkun = HapusAkunModel.fromJson(response.data);
      return resHapusAkun;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
