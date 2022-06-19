import 'package:flutter/cupertino.dart';
import 'package:home_page/model/all_product_model.dart' as resultAllProduct;
import 'package:home_page/model/get_user_by_id_model.dart' as resultUserById;
import 'package:home_page/model/get_user_transaction_id.dart'
    as resultUserTransactionId;
import 'package:home_page/services/api_servies.dart';

class PayzoneViewModel extends ChangeNotifier {
  List<resultAllProduct.AllProductModel> _resultAll = [];
  List<resultAllProduct.AllProductModel> get resultAll => _resultAll;
  Future<void> getAllProduct() async {
    final getAllProduct = PayzoneApiServices();

    try {
      final newResultAll = await getAllProduct.getAllProduct();
      _resultAll = newResultAll ?? [];
      print("hasil sukses all product : $_resultAll");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }
  // Future<List<AllProductModel>?> getAllProduct() async {
  //   final response = await Dio().get("");
  //   // print("hasil : ${response.data}");
  //   final res = AllProductModel.fromJson(response.data);
  //   List<AllProductModel>? result = res.results;
  //   return result;
  // }

  List<resultUserById.GetUserByIdModel> _resultUserId = [];
  List<resultUserById.GetUserByIdModel> get resultUserId => _resultUserId;
  Future<void> getAllUserById(int userId) async {
    final getAllUserId = PayzoneApiServices();

    try {
      final newResultUserId = await getAllUserId.getAllUserById(userId);
      _resultUserId = newResultUserId ?? [];
      print("hasil sukses all product : $_resultUserId");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }

  List<resultUserTransactionId.GetUserTransactionIdModel> _resultTransactionId =
      [];
  List<resultUserTransactionId.GetUserTransactionIdModel>
      get resultTransactionId => _resultTransactionId;
  Future<void> getAllTransactionById(int userTransactionId) async {
    final getUserTransactionId = PayzoneApiServices();

    try {
      final newResulTransactionId =
          await getUserTransactionId.getAllTransactionById(userTransactionId);
      _resultTransactionId = newResulTransactionId ?? [];
      print("hasil sukses all product : $_resultTransactionId");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }
}
