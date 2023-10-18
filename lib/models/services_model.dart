class ServicesBaseClass {
  List<ServicesModelClass>? data;

  ServicesBaseClass({this.data});

  ServicesBaseClass.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ServicesModelClass>[];
      json['data'].forEach((v) {
        data!.add(new ServicesModelClass.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServicesModelClass {
  String? name;
  String? image;
  String? description;

  ServicesModelClass({this.name, this.image, this.description});

  ServicesModelClass.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    return data;
  }
}
