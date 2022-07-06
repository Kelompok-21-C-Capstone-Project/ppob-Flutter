import 'package:flutter/material.dart';
import 'package:payzone_2/model/all_product_model.dart' as resultAllProduct;
import 'package:payzone_2/model/get_user_by_id_model.dart' as resultAllUserById;
import 'package:payzone_2/model/get_user_transaction_id.dart'
    as resultUserTransactionId;
import 'package:payzone_2/service/api_servies.dart';

class PayzoneViewModel extends ChangeNotifier {
  resultAllProduct.AllProductModel _resultAllProductPayzone =
      resultAllProduct.AllProductModel();
  resultAllProduct.AllProductModel get resultAllProductPayzone =>
      _resultAllProductPayzone;

  Future<void> getAllProduct(int idAllProduct) async {
    final getAllProduct = PayzoneApiServices();
    print("ini eror 2 : $idAllProduct");

    try {
      final newResultAllProduct =
          await getAllProduct.getAllProduct(idAllProduct);
      _resultAllProductPayzone = newResultAllProduct;
      print("hasil sukses all product : $_resultAllProductPayzone");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }

  resultAllUserById.GetUserByIdModel _resultAllUser =
      resultAllUserById.GetUserByIdModel();
  resultAllUserById.GetUserByIdModel get resultAllUser => _resultAllUser;

  Future<void> getAllUserById(int userId) async {
    final getUserAllById = PayzoneApiServices();
    print("ini eror 2 : $userId");

    try {
      final newResultAllUserById = await getUserAllById.getAllUserById(userId);
      _resultAllUser = newResultAllUserById;
      print("hasil sukses all product : $_resultAllUser");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }

  resultUserTransactionId.GetUserTransactionIdModel _resultTransactionId =
      resultUserTransactionId.GetUserTransactionIdModel();
  resultUserTransactionId.GetUserTransactionIdModel get resultTransactionId =>
      _resultTransactionId;

  Future<void> getAllTransactionById(int userTransactionId) async {
    final getUserTransactionId = PayzoneApiServices();
    print("ini eror 2 : $userTransactionId");

    try {
      final newResulTransactionId =
          await getUserTransactionId.getAllTransaction(userTransactionId);
      _resultTransactionId = newResulTransactionId;
      print("hasil sukses all product : $_resultTransactionId");
    } catch (e) {
      print("hasil eror all product : $e");
    }
    notifyListeners();
  }
}

  // List<resultAllProduct.AllProductModel> _resultAll = [];
  // List<resultAllProduct.AllProductModel> get resultAll => _resultAll;
  // Future<void> getAllProduct() async {
  //   final getAllProduct = PayzoneApiServices();

  //   try {
  //     final newResultAll = await getAllProduct.getAllProduct();
  //     _resultAll = newResultAll ?? [];
  //     print("hasil sukses all product : $_resultAll");
  //   } catch (e) {
  //     print("hasil eror all product : $e");
  //   }
  //   notifyListeners();
  // }

// Future<List<AllProductModel>?> getAllProduct() async {
  //   final response = await Dio().get("");
  //   // print("hasil : ${response.data}");
  //   final res = AllProductModel.fromJson(response.data);
  //   List<AllProductModel>? result = res.results;
  //   return result;
  // }

  // List<resultUserById.GetUserByIdModel> _resultUserId = [];
  // List<resultUserById.GetUserByIdModel> get resultUserId => _resultUserId;
  // Future<void> getAllUserById(int userId) async {
  //   final getAllUserId = PayzoneApiServices();

  //   try {
  //     final newResultUserId = await getAllUserId.getAllUserById(userId);
  //     _resultUserId = newResultUserId ?? [];
  //     print("hasil sukses all product : $_resultUserId");
  //   } catch (e) {
  //     print("hasil eror all product : $e");
  //   }
  //   notifyListeners();
  // }
