class getTokenPayload {
  String? email;
  int? ext;
  int? iat;
  String? id;
  String? name;
  String? phone;
  List<String>? role;
  String? username;

  getTokenPayload(
      {this.email,
      this.ext,
      this.iat,
      this.id,
      this.name,
      this.phone,
      this.role,
      this.username});

  getTokenPayload.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    ext = json['ext'];
    iat = json['iat'];
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    role = json['role'].cast<String>();
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['ext'] = this.ext;
    data['iat'] = this.iat;
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['role'] = this.role;
    data['username'] = this.username;
    return data;
  }
}
