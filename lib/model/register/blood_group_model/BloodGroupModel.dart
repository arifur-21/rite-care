class BloodGroupModel {
  String? status;
  List<Data>? data;

  BloodGroupModel({this.status, this.data});

  BloodGroupModel.fromJson(Map<String, dynamic> json) {
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
  dynamic? id;
  dynamic? name;
  dynamic? description;
  dynamic? code;
  dynamic? userId;
  dynamic? typeName;
  bool? active;
  dynamic? user;

  Data(
      {this.id,
        this.name,
        this.description,
        this.code,
        this.userId,
        this.typeName,
        this.active,
        this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    description = json['Description'];
    code = json['Code'];
    userId = json['UserId'];
    typeName = json['TypeName'];
    active = json['Active'];
    user = json['User'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['Code'] = this.code;
    data['UserId'] = this.userId;
    data['TypeName'] = this.typeName;
    data['Active'] = this.active;
    data['User'] = this.user;
    return data;
  }
}