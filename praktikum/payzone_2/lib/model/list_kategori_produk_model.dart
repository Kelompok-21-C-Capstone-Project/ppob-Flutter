class ListKategoriProdukModel {
  int? pageLength;
  List<Datas>? datas;

  ListKategoriProdukModel({this.pageLength, this.datas});

  ListKategoriProdukModel.fromJson(Map<String, dynamic> json) {
    pageLength = json['page_length'];
    if (json['datas'] != null) {
      datas = <Datas>[];
      json['datas'].forEach((v) {
        datas!.add(new Datas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page_length'] = this.pageLength;
    if (this.datas != null) {
      data['datas'] = this.datas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Datas {
  String? id;
  String? name;
  String? slug;
  bool? isAvailable;
  String? description;
  String? icon;
  int? productSum;

  Datas(
      {this.id,
      this.name,
      this.slug,
      this.isAvailable,
      this.description,
      this.icon,
      this.productSum});

  Datas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    isAvailable = json['is_available'];
    description = json['description'];
    icon = json['icon'];
    productSum = json['product_sum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['is_available'] = this.isAvailable;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['product_sum'] = this.productSum;
    return data;
  }
}
