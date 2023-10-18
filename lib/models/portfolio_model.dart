class PortfolioModel {
  String? name;
  String? iamge;
  String? description;
  String? title;

  PortfolioModel({this.name, this.iamge, this.description, this.title});

  PortfolioModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iamge = json['iamge'];
    description = json['description'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['iamge'] = iamge;
    data['description'] = description;
    data['title'] =title;
    return data;
  }
}