import 'package:dio/dio.dart';
import 'package:payzone_2/model/history_model.dart';

class HistoryApiServices {
  Future<HistoryModel> getAllHistory(String idHistory) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await Dio().get(
          "https://payzone.herokuapp.com/v1/users/$idHistory/transactions");
      print("ini adalah eror : $idHistory");

      final resHistory = HistoryModel.fromJson(response.data);
      return resHistory;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
