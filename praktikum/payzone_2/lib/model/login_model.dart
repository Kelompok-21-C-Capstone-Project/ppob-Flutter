class LoginModel {
  String? identifier;
  String? password;

  LoginModel({this.identifier, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identifier'] = this.identifier;
    data['password'] = this.password;
    return data;
  }
}

// class LoginModel {
//   String? status;
//   String? token;

//   LoginModel({this.status, this.token});

//   LoginModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     token = json['token'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['token'] = this.token;
//     return data;
//   }
// }
