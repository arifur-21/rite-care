class PatientRegisterModel {
  PatientRegisterModel({
      this.oldId, 
      this.firstName, 
      this.lastName, 
      this.phoneNumber, 
      this.genderId, 
      this.bloodGroup, 
      this.bloodGroupId, 
      this.fatherName, 
      this.dob, 
      this.nationalId, 
      this.occupation, 
      this.street, 
      this.city, 
      this.zip, 
      this.country, 
      this.email, 
      this.photo, 
      this.emergencyNumber, 
      this.emergencyContactName, 
      this.emergencyContactRelation, 
      this.createdDate, 
      this.serviceId, 
      this.relationshipId, 
      this.rankId, 
      this.tradeId, 
      this.serviceTypeId, 
      this.rankTypeId, 
      this.unitName, 
      this.rankName, 
      this.tradeName, 
      this.unitId, 
      this.isRetired, 
      this.patientPrefixId, 
      this.patientStatusId, 
      this.sex, 
      this.oldDob,});

  PatientRegisterModel.fromJson(dynamic json) {
    oldId = json['OldId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    phoneNumber = json['PhoneNumber'];
    genderId = json['GenderId'];
    bloodGroup = json['BloodGroup'];
    bloodGroupId = json['BloodGroupId'];
    fatherName = json['FatherName'];
    dob = json['DOB'];
    nationalId = json['NationalId'];
    occupation = json['Occupation'];
    street = json['Street'];
    city = json['City'];
    zip = json['Zip'];
    country = json['Country'];
    email = json['Email'];
    photo = json['Photo'];
    emergencyNumber = json['EmergencyNumber'];
    emergencyContactName = json['EmergencyContactName'];
    emergencyContactRelation = json['EmergencyContactRelation'];
    createdDate = json['CreatedDate'];
    serviceId = json['ServiceId'];
    relationshipId = json['RelationshipId'];
    rankId = json['RankId'];
    tradeId = json['TradeId'];
    serviceTypeId = json['ServiceTypeId'];
    rankTypeId = json['RankTypeId'];
    unitName = json['UnitName'];
    rankName = json['RankName'];
    tradeName = json['TradeName'];
    unitId = json['UnitId'];
    isRetired = json['IsRetired'];
    patientPrefixId = json['PatientPrefixId'];
    patientStatusId = json['PatientStatusId'];
    sex = json['Sex'];
    oldDob = json['OldDob'];
  }
  dynamic? oldId;
  dynamic? firstName;
  dynamic? lastName;
  dynamic? phoneNumber;
  dynamic? genderId;
  dynamic? bloodGroup;
  dynamic? bloodGroupId;
  dynamic? fatherName;
  dynamic? dob;
  dynamic? nationalId;
  dynamic? occupation;
  dynamic? street;
  dynamic? city;
  dynamic? zip;
  dynamic? country;
  dynamic? email;
  dynamic? photo;
  dynamic? emergencyNumber;
  dynamic? emergencyContactName;
  dynamic? emergencyContactRelation;
  dynamic? createdDate;
  dynamic? serviceId;
  dynamic? relationshipId;
  dynamic? rankId;
  dynamic? tradeId;
  dynamic? serviceTypeId;
  dynamic? rankTypeId;
  dynamic? unitName;
  dynamic? rankName;
  dynamic? tradeName;
  dynamic? unitId;
  dynamic? isRetired;
  dynamic? patientPrefixId;
  dynamic? patientStatusId;
  dynamic? sex;
  dynamic? oldDob;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OldId'] = oldId;
    map['FirstName'] = firstName;
    map['LastName'] = lastName;
    map['PhoneNumber'] = phoneNumber;
    map['GenderId'] = genderId;
    map['BloodGroup'] = bloodGroup;
    map['BloodGroupId'] = bloodGroupId;
    map['FatherName'] = fatherName;
    map['DOB'] = dob;
    map['NationalId'] = nationalId;
    map['Occupation'] = occupation;
    map['Street'] = street;
    map['City'] = city;
    map['Zip'] = zip;
    map['Country'] = country;
    map['Email'] = email;
    map['Photo'] = photo;
    map['EmergencyNumber'] = emergencyNumber;
    map['EmergencyContactName'] = emergencyContactName;
    map['EmergencyContactRelation'] = emergencyContactRelation;
    map['CreatedDate'] = createdDate;
    map['ServiceId'] = serviceId;
    map['RelationshipId'] = relationshipId;
    map['RankId'] = rankId;
    map['TradeId'] = tradeId;
    map['ServiceTypeId'] = serviceTypeId;
    map['RankTypeId'] = rankTypeId;
    map['UnitName'] = unitName;
    map['RankName'] = rankName;
    map['TradeName'] = tradeName;
    map['UnitId'] = unitId;
    map['IsRetired'] = isRetired;
    map['PatientPrefixId'] = patientPrefixId;
    map['PatientStatusId'] = patientStatusId;
    map['Sex'] = sex;
    map['OldDob'] = oldDob;
    return map;
  }

}