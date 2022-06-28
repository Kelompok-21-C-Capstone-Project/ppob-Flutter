import 'package:dio/dio.dart';
import '../model/user_model.dart';

class LoginApiServices {
  // Future<UserModel?> login(String id, password) async {
  //   final response = await Dio().post(
  //       "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/users/userAuthenctication",
  //       data: {
  //         "id": id,
  //         "password": password,
  //       });
  //   // print("hasil : ${response.data}");
  //   // final resLogin = UserModel.fromJson(response.data);
  //   // // harus save shared pref var res (data user), mini project set visit
  //   // return resLogin;

  //   if (response.statusCode == 200) {
  //     final body = response.data;
  //     return UserModel(accountId: id, password: password);
  //   } else {
  //     return null;
  //   }
  // }

  // google
  Future<UserModel> login(String id, password) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.post(
          "https://virtserver.swaggerhub.com/ixtza/payzone/1.0.0/auth",
          data: {
            "id": id,
            "password": password,
          });
      final resLogin = UserModel.fromJson(response.data);
      return resLogin;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
