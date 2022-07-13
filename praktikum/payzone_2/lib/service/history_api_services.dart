import 'package:dio/dio.dart';
import 'package:payzone_2/model/history_detail_by_id_model.dart';

class HistoryApiServices {
  // Future<HistoryModel> getAllHistory(String idHistory) async {
  //   final _dio = Dio();
  //   _dio.interceptors
  //       .add(LogInterceptor(responseBody: true, requestBody: true));

  //   try {
  //     final response = await Dio().get(
  //         "https://payzone.herokuapp.com/v1/users/$idHistory/transactions");
  //     print("ini adalah eror : $idHistory");

  //     final resHistory = HistoryModel.fromJson(response.data);
  //     return resHistory;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  Future<List<Data>?> getHistoryById(String idUser, String token) async {
    final response = await Dio().get(
        "https://payzone.herokuapp.com/v1/users/$idUser/transactions",
        options: Options(headers: {"Authorization": 'Bearer ${token}'}));
    print("hasil : ${response.data}");
    final res = HistoryDetailByIdModel.fromJson(response.data);

    List<Data>? result = res.data;

    return result;
  }
}
