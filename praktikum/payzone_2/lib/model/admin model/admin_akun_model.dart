class AdminAkunModel {
  String? email;
  String? key;
  String? name;
  String? password;
  String? phone;
  String? username;

  AdminAkunModel(
      {this.email,
      this.key,
      this.name,
      this.password,
      this.phone,
      this.username});

  AdminAkunModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    key = json['key'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['key'] = this.key;
    data['name'] = this.name;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['username'] = this.username;
    return data;
  }
}
