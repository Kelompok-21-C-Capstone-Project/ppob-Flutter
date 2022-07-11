class ListKategoriProdukModel {
  String? description;
  String? icon;
  String? id;
  bool? isAvailable;
  String? name;
  String? slug;

  ListKategoriProdukModel(
      {this.description,
      this.icon,
      this.id,
      this.isAvailable,
      this.name,
      this.slug});

  ListKategoriProdukModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    icon = json['icon'];
    id = json['id'];
    isAvailable = json['is_available'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['id'] = this.id;
    data['is_available'] = this.isAvailable;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}
