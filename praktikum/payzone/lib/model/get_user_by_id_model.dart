class GetUserByIdModel {
  int? id;
  String? email;
  String? username;
  String? password;
  String? phone;

  GetUserByIdModel(
      {this.id, this.email, this.username, this.password, this.phone});

  GetUserByIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    data['phone'] = this.phone;
    return data;
  }
}
