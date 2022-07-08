import 'package:dio/dio.dart';
import 'package:payzone_2/model/metode_pembayaran_model.dart';

class MetodePembayaranApiServices {
  Future<List<Services>?> getMetode() async {
    final response =
        await Dio().get("https://payzone.herokuapp.com/v1/clients/payments");
    print("hasil : ${response.data}");
    final res = MetodePembayaranModel.fromJson(response.data);

    List<Services>? result = res.services;

    return result;
  }
}
