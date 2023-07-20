class PatientListModel {
  List<Items>? items;
  int? total;

  PatientListModel({this.items, this.total});

  PatientListModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class Items {
  dynamic? oldId;
  dynamic? firstName;
  dynamic? lastName;
  dynamic? phoneNumber;
  dynamic? genderId;
  dynamic? bloodGroup;
  dynamic? bloodGroupId;
  dynamic? fatherName;
  dynamic? dOB;
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
  Gender? gender;
  PatientPrefix? patientPrefix;
  dynamic? patientStatus;
  List<dynamic>? memberships;
  List<dynamic>? patientInvoices;
  List<dynamic>? patientServices;
  List<dynamic>? payments;
  List<Null>? doctorAppointments;
  Relationship? relationship;
  Relationship? rank;
  Relationship? unit;
  dynamic? trade;
  dynamic? parentPatient;
  dynamic? visitNo;
  dynamic? patientInvoiceShadowId;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  Items(
      {this.oldId,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.genderId,
        this.bloodGroup,
        this.bloodGroupId,
        this.fatherName,
        this.dOB,
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
        this.oldDob,
        this.gender,
        this.patientPrefix,
        this.patientStatus,
        this.memberships,
        this.patientInvoices,
        this.patientServices,
        this.payments,
        this.doctorAppointments,
        this.relationship,
        this.rank,
        this.unit,
        this.trade,
        this.parentPatient,
        this.visitNo,
        this.patientInvoiceShadowId,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Items.fromJson(Map<String, dynamic> json) {
    oldId = json['OldId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    phoneNumber = json['PhoneNumber'];
    genderId = json['GenderId'];
    bloodGroup = json['BloodGroup'];
    bloodGroupId = json['BloodGroupId'];
    fatherName = json['FatherName'];
    dOB = json['DOB'];
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
    gender =
    json['Gender'] != null ? new Gender.fromJson(json['Gender']) : null;
    patientPrefix = json['PatientPrefix'] != null
        ? new PatientPrefix.fromJson(json['PatientPrefix'])
        : null;
    patientStatus = json['PatientStatus'];
    if (json['Memberships'] != null) {
      memberships = <Null>[];
      json['Memberships'].forEach((v) {
       // memberships!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientInvoices'] != null) {
      patientInvoices = <Null>[];
      json['PatientInvoices'].forEach((v) {
      //  patientInvoices!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      patientServices = <Null>[];
      json['PatientServices'].forEach((v) {
       // patientServices!.add(new Null.fromJson(v));
      });
    }
    if (json['Payments'] != null) {
      payments = <Null>[];
      json['Payments'].forEach((v) {
     //   payments!.add(new Null.fromJson(v));
      });
    }
    if (json['DoctorAppointments'] != null) {
      doctorAppointments = <Null>[];
      json['DoctorAppointments'].forEach((v) {
       // doctorAppointments!.add(new Null.fromJson(v));
      });
    }
    relationship = json['Relationship'] != null
        ? new Relationship.fromJson(json['Relationship'])
        : null;
    rank =
    json['Rank'] != null ? new Relationship.fromJson(json['Rank']) : null;
    unit =
    json['Unit'] != null ? new Relationship.fromJson(json['Unit']) : null;
    trade = json['Trade'];
    parentPatient = json['ParentPatient'];
    visitNo = json['VisitNo'];
    patientInvoiceShadowId = json['PatientInvoiceShadowId'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OldId'] = this.oldId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['PhoneNumber'] = this.phoneNumber;
    data['GenderId'] = this.genderId;
    data['BloodGroup'] = this.bloodGroup;
    data['BloodGroupId'] = this.bloodGroupId;
    data['FatherName'] = this.fatherName;
    data['DOB'] = this.dOB;
    data['NationalId'] = this.nationalId;
    data['Occupation'] = this.occupation;
    data['Street'] = this.street;
    data['City'] = this.city;
    data['Zip'] = this.zip;
    data['Country'] = this.country;
    data['Email'] = this.email;
    data['Photo'] = this.photo;
    data['EmergencyNumber'] = this.emergencyNumber;
    data['EmergencyContactName'] = this.emergencyContactName;
    data['EmergencyContactRelation'] = this.emergencyContactRelation;
    data['CreatedDate'] = this.createdDate;
    data['ServiceId'] = this.serviceId;
    data['RelationshipId'] = this.relationshipId;
    data['RankId'] = this.rankId;
    data['TradeId'] = this.tradeId;
    data['ServiceTypeId'] = this.serviceTypeId;
    data['RankTypeId'] = this.rankTypeId;
    data['UnitName'] = this.unitName;
    data['RankName'] = this.rankName;
    data['TradeName'] = this.tradeName;
    data['UnitId'] = this.unitId;
    data['IsRetired'] = this.isRetired;
    data['PatientPrefixId'] = this.patientPrefixId;
    data['PatientStatusId'] = this.patientStatusId;
    data['Sex'] = this.sex;
    data['OldDob'] = this.oldDob;
    if (this.gender != null) {
      data['Gender'] = this.gender!.toJson();
    }
    if (this.patientPrefix != null) {
      data['PatientPrefix'] = this.patientPrefix!.toJson();
    }
    data['PatientStatus'] = this.patientStatus;
    if (this.memberships != null) {
    //  data['Memberships'] = this.memberships!.map((v) => v.toJson()).toList();
    }
    if (this.patientInvoices != null) {
    //  data['PatientInvoices'] = this.patientInvoices!.map((v) => v.toJson()).toList();
    }
    if (this.patientServices != null) {
     /// data['PatientServices'] = this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.payments != null) {
     // data['Payments'] = this.payments!.map((v) => v.toJson()).toList();
    }
    if (this.doctorAppointments != null) {
     /// data['DoctorAppointments'] = this.doctorAppointments!.map((v) => v.toJson()).toList();
    }
    if (this.relationship != null) {
      data['Relationship'] = this.relationship!.toJson();
    }
    if (this.rank != null) {
      data['Rank'] = this.rank!.toJson();
    }
    if (this.unit != null) {
      data['Unit'] = this.unit!.toJson();
    }
    data['Trade'] = this.trade;
    data['ParentPatient'] = this.parentPatient;
    data['VisitNo'] = this.visitNo;
    data['PatientInvoiceShadowId'] = this.patientInvoiceShadowId;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class Gender {
  dynamic? name;
  dynamic? code;
  dynamic? typeName;
  dynamic? user;
  List<dynamic>? bloodDonors;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  Gender(
      {this.name,
        this.code,
        this.typeName,
        this.user,
        this.bloodDonors,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Gender.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    code = json['Code'];
    typeName = json['TypeName'];
    user = json['User'];
    if (json['BloodDonors'] != null) {
      bloodDonors = <Null>[];
      json['BloodDonors'].forEach((v) {
       // bloodDonors!.add(new Null.fromJson(v));
      });
    }
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Code'] = this.code;
    data['TypeName'] = this.typeName;
    data['User'] = this.user;
    if (this.bloodDonors != null) {
     /// data['BloodDonors'] = this.bloodDonors!.map((v) => v.toJson()).toList();
    }
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class PatientPrefix {
  dynamic? name;
  dynamic? prefix;
  dynamic? languageCode;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  PatientPrefix(
      {this.name,
        this.prefix,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  PatientPrefix.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    prefix = json['Prefix'];
    languageCode = json['LanguageCode'];
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Prefix'] = this.prefix;
    data['LanguageCode'] = this.languageCode;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class Relationship {
  dynamic? name;
  dynamic? languageCode;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  Relationship(
      {this.name,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Relationship.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    languageCode = json['LanguageCode'];
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['LanguageCode'] = this.languageCode;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}