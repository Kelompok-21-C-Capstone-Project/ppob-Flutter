class HistoryDetailByIdModel {
  List<Data>? data;
  int? pageLength;

  HistoryDetailByIdModel({this.data, this.pageLength});

  HistoryDetailByIdModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    pageLength = json['page_length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['page_length'] = this.pageLength;
    return data;
  }
}

class Data {
  String? createdAt;
  String? icon;
  String? id;
  String? label;
  String? paymentMethod;
  String? phoneNumber;
  int? price;
  String? status;
  String? type;

  Data(
      {this.createdAt,
      this.icon,
      this.id,
      this.label,
      this.paymentMethod,
      this.phoneNumber,
      this.price,
      this.status,
      this.type});

  Data.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    icon = json['icon'];
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
    data['icon'] = this.icon;
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
