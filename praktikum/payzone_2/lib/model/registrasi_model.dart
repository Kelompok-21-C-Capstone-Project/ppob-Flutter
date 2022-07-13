class RegistrasiModel {
  String? email;
  String? id;
  String? name;
  String? phone;
  String? role;
  String? username;

  RegistrasiModel(
      {this.email, this.id, this.name, this.phone, this.role, this.username});

  RegistrasiModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    role = json['role'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['role'] = this.role;
    data['username'] = this.username;
    return data;
  }
}

// class RegistrasiModel {
//   String? email;
//   String? name;
//   String? password;
//   String? phone;
//   String? username;

//   RegistrasiModel(
//       {this.email, this.name, this.password, this.phone, this.username});

//   RegistrasiModel.fromJson(Map<String, dynamic> json) {
//     email = json['email'];
//     name = json['name'];
//     password = json['password'];
//     phone = json['phone'];
//     username = json['username'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['email'] = this.email;
//     data['name'] = this.name;
//     data['password'] = this.password;
//     data['phone'] = this.phone;
//     data['username'] = this.username;
//     return data;
//   }
// }
