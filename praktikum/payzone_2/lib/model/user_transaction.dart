class UserTransactionModel {
  int? bill;
  int? charged;
  String? deadLine;
  String? id;
  String? paymentMethod;
  String? productName;
  int? productPrice;
  String? status;
  String? transactionId;
  String? vaNumber;

  UserTransactionModel(
      {this.bill,
      this.charged,
      this.deadLine,
      this.id,
      this.paymentMethod,
      this.productName,
      this.productPrice,
      this.status,
      this.transactionId,
      this.vaNumber});

  UserTransactionModel.fromJson(Map<String, dynamic> json) {
    bill = json['bill'];
    charged = json['charged'];
    deadLine = json['dead_line'];
    id = json['id'];
    paymentMethod = json['payment_method'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    status = json['status'];
    transactionId = json['transaction_id'];
    vaNumber = json['va_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bill'] = this.bill;
    data['charged'] = this.charged;
    data['dead_line'] = this.deadLine;
    data['id'] = this.id;
    data['payment_method'] = this.paymentMethod;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['status'] = this.status;
    data['transaction_id'] = this.transactionId;
    data['va_number'] = this.vaNumber;
    return data;
  }
}
