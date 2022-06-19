class GetUserTransactionIdModel {
  int? id;
  int? userId;
  int? productId;
  String? status;
  String? transactionDetail;
  String? transactionDate;
  String? updatedAt;

  GetUserTransactionIdModel(
      {this.id,
      this.userId,
      this.productId,
      this.status,
      this.transactionDetail,
      this.transactionDate,
      this.updatedAt});

  GetUserTransactionIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    status = json['status'];
    transactionDetail = json['transaction_detail'];
    transactionDate = json['transaction_date'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['status'] = this.status;
    data['transaction_detail'] = this.transactionDetail;
    data['transaction_date'] = this.transactionDate;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
