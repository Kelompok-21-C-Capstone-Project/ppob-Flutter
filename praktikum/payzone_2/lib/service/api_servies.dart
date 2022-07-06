import 'package:dio/dio.dart';
import 'package:payzone_2/model/all_product_model.dart' as allProduct;
import 'package:payzone_2/model/get_user_by_id_model.dart' as getUserById;
import 'package:payzone_2/model/get_user_transaction_id.dart'
    as getUserTransactionId;

class PayzoneApiServices {
  Future<allProduct.AllProductModel> getAllProduct(int idProduct) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await Dio().get(
          "https://virtserver.swaggerhub.com/ixtza/payzone/1.0.0/users/$idProduct");
      print("ini adalah eror : $idProduct");
      final resAllProduct = allProduct.AllProductModel.fromJson(response.data);
      return resAllProduct;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<getUserById.GetUserByIdModel> getAllUserById(int userId) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.get(
          "https://virtserver.swaggerhub.com/ixtza/payzone/1.0.0/users/$userId");
      print("ini adalah eror : $userId");
      final resAllUserId = getUserById.GetUserByIdModel.fromJson(response.data);
      return resAllUserId;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<getUserTransactionId.GetUserTransactionIdModel> getAllTransaction(
      int userTransactionId) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.get(
          "https://virtserver.swaggerhub.com/ixtza/payzone/1.0.0/users/$userTransactionId/transaction");
      print("ini adalah eror : $userTransactionId");
      final resTransaction =
          getUserTransactionId.GetUserTransactionIdModel.fromJson(
              response.data);
      return resTransaction;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}

  // Future<List<allProduct.AllProductModel>?> getAllProduct(int idProduct) async {
  //   final response = await Dio().get(
  //       "https://virtserver.swaggerhub.com/ixtza/payzone/1.0.0/users/$idProduct");
  //   print("hasil : ${response.data}");
  //   final res = allProduct.AllProductModel.fromJson(response.data);
  //   // List<allProduct.AllProductModel>? result = res.results;
  //   // return result;
  // }