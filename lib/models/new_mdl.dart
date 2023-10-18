// class portfolioListModel {
//   List<Data>? data;

//   portfolioListModel({this.data});

//   portfolioListModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   String? name;
//   String? iamge;
//   String? description;
//   String? title;

//   Data({this.name, this.iamge, this.description, this.title});

//   Data.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     iamge = json['iamge'];
//     description = json['description'];
//     title = json['title'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['iamge'] = this.iamge;
//     data['description'] = this.description;
//     data['title'] = this.title;
//     return data;
//   }
// }


class PortFolioListClass {
  List<Data>? data;

  PortFolioListClass({this.data});

  PortFolioListClass.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  String? name;
  String? image;
  String? description;
  String? title;
  List<String>? category;
  List<String>? images;

  Data(
      {this.name,
      this.image,
      this.description,
      this.title,
      this.category,
      this.images});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
    title = json['title'];
    category = json['category'].cast<String>();
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['title'] = this.title;
    data['category'] = this.category;
    data['images'] = this.images;
    return data;
  }
}
