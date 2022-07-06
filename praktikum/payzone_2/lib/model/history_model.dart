class HistoryModel {
  String? createdAt;
  String? id;
  String? label;
  String? paymentMethod;
  String? phoneNumber;
  int? price;
  String? status;
  String? type;

  HistoryModel(
      {this.createdAt,
      this.id,
      this.label,
      this.paymentMethod,
      this.phoneNumber,
      this.price,
      this.status,
      this.type});

  HistoryModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    id = json['id'];
    label = json['label'];
    paymentMethod = json['payment_method'];
    phoneNumber = json['phone_number'];
    price = json['price'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['label'] = this.label;
    data['payment_method'] = this.paymentMethod;
    data['phone_number'] = this.phoneNumber;
    data['price'] = this.price;
    data['status'] = this.status;
    data['type'] = this.type;
    return data;
  }
}
