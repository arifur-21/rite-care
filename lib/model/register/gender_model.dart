class GenderModel {
  String? status;
  List<Data>? data;

  GenderModel({this.status, this.data});

  GenderModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  int? code;
  String? typeName;
  bool? active;
  int? userId;
  Null? user;

  Data(
      {this.id,
        this.name,
        this.code,
        this.typeName,
        this.active,
        this.userId,
        this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    code = json['Code'];
    typeName = json['TypeName'];
    active = json['Active'];
    userId = json['UserId'];
    user = json['User'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Code'] = this.code;
    data['TypeName'] = this.typeName;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['User'] = this.user;
    return data;
  }
}