import 'package:dio/dio.dart';
import 'package:payzone_2/model/user_transaction.dart';

class UserTransactionApiServices {
  Future<UserTransactionModel> postUserTrans(
      String email,
      String paymentData,
      String paymentDetails,
      String paymentMethod,
      int price,
      String produkId,
      String transactionData,
      String token) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response =
          await _dio.post("https://payzone.herokuapp.com/v1/users/transactions",
              data: {
                "email": email,
                "payment_data": paymentData,
                "payment_details": paymentDetails,
                "payment_method": paymentMethod,
                "price": price,
                "product_id": produkId,
                "transaction_data": transactionData,
              },
              options: Options(headers: {"Authorization": 'Bearer ${token}'}));
      print("hasil : ${response.data}");
      final resUserTrans = UserTransactionModel.fromJson(response.data);
      return resUserTrans;
      // return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
