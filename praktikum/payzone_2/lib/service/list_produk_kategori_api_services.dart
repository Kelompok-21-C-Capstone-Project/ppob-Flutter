import 'package:dio/dio.dart';
import 'package:payzone_2/model/list_kategori_produk_model.dart';

class ListKategoriProdukApiServices {
  // Future<ListKategoriProdukModel> getKategoriProduk() async {
  //   final _dio = Dio();
  //   _dio.interceptors
  //       .add(LogInterceptor(responseBody: true, requestBody: true));

  //   try {
  //     final response = await _dio
  //         .get("https://payzone.herokuapp.com/v1/clients/products/categories");
  //     print("hasil : ${response.data}");
  //     final resKategori = ListKategoriProdukModel.fromJson(response.data);
  //     return resKategori;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  // Future<List<ListKategoriProdukModel>?> getKategoriProduk() async {
  //   final response = await Dio()
  //       .get("https://payzone.herokuapp.com/v1/clients/products/categories");
  //   print("hasil : ${response.data}");
  //   final res = ListKategoriProdukModel.fromJson(response.data);
  //   List<ListKategoriProdukModel>? listKategoriProduk = res;
  //   // res.map((e) => ListKategoriProdukModel.fromJson(e)).toList();
  //   return listKategoriProduk;
  //   // if (response.statusCode == 200) {
  //   //   final parsed = json.decode(response.data).cast<Map<String, dynamic>>();
  //   //   return parsed
  //   //       .map<ListKategoriProdukModel>(
  //   //           (json) => ListKategoriProdukModel.fromJson(json))
  //   //       .toList();
  //   // } else {
  //   //   throw Exception('Failed to load post');
  //   // }
  // }

  Future<List<ListKategoriProdukModel>?> getKategoriProduk() async {
    final response = await Dio()
        .get("https://payzone.herokuapp.com/v1/clients/products/categories");
    print("hasil : ${response.data}");
    final res = ListKategoriProdukModel.fromJson(response.data);
    List<ListKategoriProdukModel>? result =
        res as List<ListKategoriProdukModel>?;
    return result;
  }
}
