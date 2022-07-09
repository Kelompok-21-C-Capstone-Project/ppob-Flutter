import 'package:dio/dio.dart';
import 'package:payzone_2/model/client_daftar_produk_e_wallet_model.dart';
import 'package:payzone_2/model/client_daftar_produk_paket_data_model.dart';
import 'package:payzone_2/model/client_daftar_produk_pdam_model.dart';

class DaftarProdukApiServices {
  Future<DaftarProdukEWalletModel> daftarProdukEWallet() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio.get(
          "https://payzone.herokuapp.com/v1/clients/products/uang-elektronik");
      print("hasil : ${response.data}");
      final resDaftarEWallet = DaftarProdukEWalletModel.fromJson(response.data);
      return resDaftarEWallet;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<DaftarProdukPdamModel> daftarProdukPdam() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .get("https://payzone.herokuapp.com/v1/clients/products/air-pdam");
      print("hasil : ${response.data}");
      final resDaftarPdam = DaftarProdukPdamModel.fromJson(response.data);
      return resDaftarPdam;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<DaftarProdukPaketDataModel> daftarProdukPaketData() async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      final response = await _dio
          .get("https://payzone.herokuapp.com/v1/clients/products/paket-data");
      print("hasil : ${response.data}");
      final resDaftarPaketData =
          DaftarProdukPaketDataModel.fromJson(response.data);
      return resDaftarPaketData;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
