class UserModel {
  int? id;
  String? email;
  String? username;
  String? password;
  String? phone;
  String? token;

  UserModel(
      {this.id,
      this.email,
      this.username,
      this.password,
      this.phone,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['token'] = this.token;
    return data;
  }
}
