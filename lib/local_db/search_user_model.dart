
import 'package:hive/hive.dart';
part 'search_user_model.g.dart';

@HiveType(typeId: 0)
class SearchUserModel extends HiveObject{
  @HiveField(0)
  dynamic id;
  @HiveField(1)
  dynamic name;
  @HiveField(2)
  dynamic cellNo;
  @HiveField(3)
  dynamic officalNo;
  @HiveField(4)
  dynamic gender;
  @HiveField(5)
  dynamic bloodGroup;
  @HiveField(6)
  dynamic address;
  @HiveField(7)
  dynamic mobile;
  @HiveField(8)
  dynamic email;
  @HiveField(9)
  dynamic dob;
  @HiveField(10)
  dynamic emergencyContact;
  @HiveField(11)
  dynamic emergencyRelation;
  @HiveField(12)
  dynamic relationship;
  @HiveField(13)
  dynamic serviceType;
  @HiveField(14)
  dynamic rank;
  @HiveField(15)
  dynamic branch;
  @HiveField(16)
  dynamic unit;
  @HiveField(17)
  dynamic patienStatus;
  @HiveField(18)
  dynamic patientPrefix;
  @HiveField(19)
  dynamic patientId;
  @HiveField(20)
  dynamic nationalId;
  @HiveField(21)
  dynamic lastName;
  @HiveField(22)
  dynamic patientOldId;
  @HiveField(23)
  dynamic street;
  @HiveField(24)
  dynamic city;
  @HiveField(25)
  dynamic emergencyName;

  SearchUserModel({
      this.id,
      this.name,
      this.cellNo,
      this.officalNo,
      this.gender,
      this.bloodGroup,
      this.address,
      this.mobile,
      this.email,
      this.dob,
      this.emergencyContact,
      this.emergencyRelation,
      this.relationship,
      this.serviceType,
      this.rank,
      this.branch,
      this.unit,
      this.patienStatus,
      this.patientPrefix,
      this.patientId,
    this.emergencyName,
    this.lastName,
    this.city,
    this.nationalId,
    this.patientOldId,
    this.street
  });
}

/*  SearchUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cellNo = json['cellNo'];
    name = json['name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cellNo'] = this.cellNo;
    data['name'] = this.name;
    return data;
  }*/



