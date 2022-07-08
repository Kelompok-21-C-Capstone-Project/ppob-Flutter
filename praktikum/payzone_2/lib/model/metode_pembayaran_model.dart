class MetodePembayaranModel {
  int? id;
  String? type;
  List<Services>? services;

  MetodePembayaranModel({this.id, this.type, this.services});

  MetodePembayaranModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? id;
  String? label;
  String? icon;

  Services({this.id, this.label, this.icon});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['label'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['label'] = this.label;
    data['icon'] = this.icon;
    return data;
  }
}
