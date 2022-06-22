class UserModel {
  String? accountId;
  String? password;

  UserModel({this.accountId, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    accountId = json['account_id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['account_id'] = this.accountId;
    data['password'] = this.password;
    return data;
  }
}
