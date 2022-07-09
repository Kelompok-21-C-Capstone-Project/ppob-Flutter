class DaftarProdukPdamModel {
  String? id;
  String? label;
  List<Products>? products;
  String? slug;

  DaftarProdukPdamModel({this.id, this.label, this.products, this.slug});

  DaftarProdukPdamModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['label'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['label'] = this.label;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['slug'] = this.slug;
    return data;
  }
}

class Products {
  String? categoryId;
  String? description;
  String? group;
  String? id;
  bool? isDiscount;
  String? label;
  int? price;
  int? stock;

  Products(
      {this.categoryId,
      this.description,
      this.group,
      this.id,
      this.isDiscount,
      this.label,
      this.price,
      this.stock});

  Products.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    description = json['description'];
    group = json['group'];
    id = json['id'];
    isDiscount = json['is_discount'];
    label = json['label'];
    price = json['price'];
    stock = json['stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['description'] = this.description;
    data['group'] = this.group;
    data['id'] = this.id;
    data['is_discount'] = this.isDiscount;
    data['label'] = this.label;
    data['price'] = this.price;
    data['stock'] = this.stock;
    return data;
  }
}
