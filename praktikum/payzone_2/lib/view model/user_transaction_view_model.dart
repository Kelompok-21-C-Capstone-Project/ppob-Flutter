import 'package:flutter/cupertino.dart';
import 'package:payzone_2/model/user_transaction.dart';
import 'package:payzone_2/service/user_transaction_api_services.dart';

class UserTransactionViewModel extends ChangeNotifier {
  UserTransactionModel _resultUserTransc = UserTransactionModel();
  UserTransactionModel get resultUserTransc => _resultUserTransc;
  Future<void> postTransactionUser(
      String email,
      String paymentData,
      String paymentDetails,
      String paymentMethod,
      int price,
      String produkId,
      String transactionData,
      String token) async {
    final getAllUserTransaction = UserTransactionApiServices();

    try {
      final newResultUserTransaction =
          await getAllUserTransaction.postUserTrans(
              email,
              paymentData,
              paymentDetails,
              paymentMethod,
              price,
              produkId,
              transactionData,
              token);
      _resultUserTransc = newResultUserTransaction;
      print("hasil sukses regis : $_resultUserTransc");
    } catch (e) {
      print("hasil eror regis : $e");
    }
    notifyListeners();
  }
}
