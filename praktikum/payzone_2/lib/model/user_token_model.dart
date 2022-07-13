class TokenModel {
  String? id;

  TokenModel({this.id});

  TokenModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}
