import 'package:dio/dio.dart';
import 'package:payzone_2/model/client_daftar_produk_paket_data_model.dart';

class DaftarProdukApiServices {
  Future<DaftarProdukModel> daftarProdukEWallet() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .get("https://payzone.herokuapp.com/v1/clients/products/e-wallet");
      print("hasil : ${response.data}");
      final resDaftarEWallet = DaftarProdukModel.fromJson(response.data);
      return resDaftarEWallet;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<DaftarProdukModel> daftarProdukPdam() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .get("https://payzone.herokuapp.com/v1/clients/products/pdam");
      print("hasil : ${response.data}");
      final resDaftarPdam = DaftarProdukModel.fromJson(response.data);
      return resDaftarPdam;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<DaftarProdukModel> daftarProdukPaketData() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .get("https://payzone.herokuapp.com/v1/clients/products/paket-data");
      print("hasil : ${response.data}");
      final resDaftarPaketData = DaftarProdukModel.fromJson(response.data);
      return resDaftarPaketData;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
