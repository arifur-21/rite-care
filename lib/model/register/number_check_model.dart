class NumberCheckModel {
  int? oldId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? genderId;

  NumberCheckModel(
      {this.oldId,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.genderId});

  NumberCheckModel.fromJson(Map<dynamic, dynamic> json) {
    oldId = json['OldId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    phoneNumber = json['PhoneNumber'];
    genderId = json['GenderId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OldId'] = this.oldId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['PhoneNumber'] = this.phoneNumber;
    data['GenderId'] = this.genderId;
    return data;
  }
}