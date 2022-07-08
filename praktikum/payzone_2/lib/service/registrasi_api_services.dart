import 'package:dio/dio.dart';
import 'package:payzone_2/model/registrasi_model.dart';

class RegistrasiApiServices {
  // Future<RegistrasiModel> regis(String email, String password) async {
  //   final _dio = Dio();
  //   _dio.interceptors
  //       .add(LogInterceptor(responseBody: true, requestBody: true));

  //   try {
  //     final response = await _dio
  //         .post("https://payzone.herokuapp.com/v1/user_register", data: {
  //       "email": email,
  //       "password": password,
  //     });
  //     final resRegistrasi = RegistrasiModel.fromJson(response.data);
  //     return resRegistrasi;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }
}
