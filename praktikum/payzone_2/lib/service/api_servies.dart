import 'package:dio/dio.dart';
import 'package:payzone_2/model/all_product_model.dart' as allProduct;
import 'package:payzone_2/model/get_user_by_id_model.dart' as getUserById;
import 'package:payzone_2/model/get_user_transaction_id.dart'
    as getUserTransactionId;

class PayzoneApiServices {
  Future<List<allProduct.AllProductModel>?> getAllProduct() async {
    final response = await Dio().get(
        "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/products/searchProduct");
    print("hasil : ${response.data}");
    final res = allProduct.AllProductModel.fromJson(response.data);
    // List<allProduct.AllProductModel>? result = res.results;
    // return result;
  }

  Future<List<getUserById.GetUserByIdModel>?> getAllUserById(int userId) async {
    //tambah user id di url
    final response = await Dio().get(
        "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/users/getUserDataById");
    // print("hasil : ${response.data}");
    final res = getUserById.GetUserByIdModel.fromJson(response.data);
    // List<getUserById.GetUserByIdModel>? result = res.results;
    // return result;
  }

  Future<List<getUserTransactionId.GetUserTransactionIdModel>?>
      getAllTransactionById(int userTransactionId) async {
    //tambah user id di url
    final response = await Dio().get(
        "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/users/getUserTransactionDataById");
    // print("hasil : ${response.data}");
    final res =
        getUserTransactionId.GetUserTransactionIdModel.fromJson(response.data);
    // List<getUserTransactionId.GetUserTransactionIdModel>? result = res.results;
    // return result;
  }
}
