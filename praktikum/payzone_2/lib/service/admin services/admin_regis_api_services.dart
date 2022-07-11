import 'package:dio/dio.dart';
import 'package:payzone_2/model/admin%20model/admin_akun_model.dart';

class AdminRegisApiServices {
  Future<AdminAkunModel> adminRegis(String email, String key, String name,
      String password, String phone, String username) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .post("https://payzone.herokuapp.com/v1/admin_register", data: {
        "email": email,
        "name": name,
        "password": password,
        "phone": phone,
        "username": username,
        "key": key,
      });
      final resAdminRegistrasi = AdminAkunModel.fromJson(response.data);
      return resAdminRegistrasi;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
