class AllProductModel {
  int? id;
  int? categoryId;
  String? name;
  int? price;
  int? stock;
  String? description;

  AllProductModel(
      {this.id,
      this.categoryId,
      this.name,
      this.price,
      this.stock,
      this.description});

  AllProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    price = json['price'];
    stock = json['stock'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['stock'] = this.stock;
    data['description'] = this.description;
    return data;
  }
}
