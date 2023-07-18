class SaveOperationScheduleModel {
  Surgery? surgery;

  SaveOperationScheduleModel({this.surgery});

  SaveOperationScheduleModel.fromJson(Map<String, dynamic> json) {
    surgery =
    json['surgery'] != null ? new Surgery.fromJson(json['surgery']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.surgery != null) {
      data['surgery'] = this.surgery!.toJson();
    }
    return data;
  }
}

class Surgery {
  dynamic? id;
  dynamic? surgeryTypeId;
  dynamic? patientId;
  dynamic? surgeryItemId;
  dynamic? surgeryStatusId;
  dynamic? userId;
  bool? active;
  dynamic? branchId;
  dynamic? tenantId;
  dynamic? roomId;
  dynamic? surgeryScheduleDate;
  dynamic? startTime;
  dynamic? endTime;
  bool? instrumentReceived;
  bool? instrumentRefund;
  bool? archived;
  dynamic? disease;
  dynamic? aNS;
  dynamic? aSA;
  dynamic? ward;
  bool? isApproved;
  dynamic? approvedUserId;
  dynamic? surgeryServiceProviderMaps;
  SurgeryType? surgeryType;
  SurgeryStatus? surgeryStatus;
  OperationRoom? operationRoom;
  Patient? patient;
  Item? item;
  String? surgeryNotes;

  Surgery(
      {this.id,
        this.surgeryTypeId,
        this.patientId,
        this.surgeryItemId,
        this.surgeryStatusId,
        this.userId,
        this.active,
        this.branchId,
        this.tenantId,
        this.roomId,
        this.surgeryScheduleDate,
        this.startTime,
        this.endTime,
        this.instrumentReceived,
        this.instrumentRefund,
        this.archived,
        this.disease,
        this.aNS,
        this.aSA,
        this.ward,
        this.isApproved,
        this.approvedUserId,
        this.surgeryServiceProviderMaps,
        this.surgeryType,
        this.surgeryStatus,
        this.operationRoom,
        this.patient,
        this.item,
        this.surgeryNotes});

  Surgery.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    surgeryTypeId = json['SurgeryTypeId'];
    patientId = json['PatientId'];
    surgeryItemId = json['SurgeryItemId'];
    surgeryStatusId = json['SurgeryStatusId'];
    userId = json['UserId'];
    active = json['Active'];
    branchId = json['BranchId'];
    tenantId = json['TenantId'];
    roomId = json['RoomId'];
    surgeryScheduleDate = json['SurgeryScheduleDate'];
    startTime = json['StartTime'];
    endTime = json['EndTime'];
    instrumentReceived = json['InstrumentReceived'];
    instrumentRefund = json['InstrumentRefund'];
    archived = json['Archived'];
    disease = json['Disease'];
    aNS = json['ANS'];
    aSA = json['ASA'];
    ward = json['Ward'];
    isApproved = json['IsApproved'];
    approvedUserId = json['ApprovedUserId'];
    surgeryServiceProviderMaps = json['SurgeryServiceProviderMaps'];
    surgeryType = json['SurgeryType'] != null
        ? new SurgeryType.fromJson(json['SurgeryType'])
        : null;
    surgeryStatus = json['SurgeryStatus'] != null
        ? new SurgeryStatus.fromJson(json['SurgeryStatus'])
        : null;
    operationRoom = json['OperationRoom'] != null
        ? new OperationRoom.fromJson(json['OperationRoom'])
        : null;
    patient =
    json['Patient'] != null ? new Patient.fromJson(json['Patient']) : null;
    item = json['Item'] != null ? new Item.fromJson(json['Item']) : null;
    surgeryNotes = json['SurgeryNotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['SurgeryTypeId'] = this.surgeryTypeId;
    data['PatientId'] = this.patientId;
    data['SurgeryItemId'] = this.surgeryItemId;
    data['SurgeryStatusId'] = this.surgeryStatusId;
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['BranchId'] = this.branchId;
    data['TenantId'] = this.tenantId;
    data['RoomId'] = this.roomId;
    data['SurgeryScheduleDate'] = this.surgeryScheduleDate;
    data['StartTime'] = this.startTime;
    data['EndTime'] = this.endTime;
    data['InstrumentReceived'] = this.instrumentReceived;
    data['InstrumentRefund'] = this.instrumentRefund;
    data['Archived'] = this.archived;
    data['Disease'] = this.disease;
    data['ANS'] = this.aNS;
    data['ASA'] = this.aSA;
    data['Ward'] = this.ward;
    data['IsApproved'] = this.isApproved;
    data['ApprovedUserId'] = this.approvedUserId;
    data['SurgeryServiceProviderMaps'] = this.surgeryServiceProviderMaps;
    if (this.surgeryType != null) {
      data['SurgeryType'] = this.surgeryType!.toJson();
    }
    if (this.surgeryStatus != null) {
      data['SurgeryStatus'] = this.surgeryStatus!.toJson();
    }
    if (this.operationRoom != null) {
      data['OperationRoom'] = this.operationRoom!.toJson();
    }
    if (this.patient != null) {
      data['Patient'] = this.patient!.toJson();
    }
    if (this.item != null) {
      data['Item'] = this.item!.toJson();
    }
    data['SurgeryNotes'] = this.surgeryNotes;
    return data;
  }
}

class SurgeryType {
  dynamic? id;
  dynamic? name;
  dynamic? description;
  dynamic? userId;
  bool? active;
  dynamic? tenantId;

  SurgeryType(
      {this.id,
        this.name,
        this.description,
        this.userId,
        this.active,
        this.tenantId});

  SurgeryType.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    description = json['Description'];
    userId = json['UserId'];
    active = json['Active'];
    tenantId = json['TenantId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['TenantId'] = this.tenantId;
    return data;
  }
}

class SurgeryStatus {
  dynamic? id;
  dynamic? name;
  dynamic? userId;
  bool? active;
  dynamic? surgeryDetails;

  SurgeryStatus(
      {this.id, this.name, this.userId, this.active, this.surgeryDetails});

  SurgeryStatus.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    userId = json['UserId'];
    active = json['Active'];
    surgeryDetails = json['SurgeryDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['SurgeryDetails'] = this.surgeryDetails;
    return data;
  }
}

class OperationRoom {
  dynamic? id;
  dynamic? roomNumber;
  dynamic? roomName;
  dynamic? surgeryTypeId;
  dynamic? inchargeId;
  dynamic? noOfBed;
  dynamic? userId;
  bool? active;
  dynamic? branchId;
  dynamic? branch;
  dynamic? tenantId;
  SurgeryType? surgeryType;
  User? user;
  List<PostOperativeRooms>? postOperativeRooms;

  OperationRoom(
      {this.id,
        this.roomNumber,
        this.roomName,
        this.surgeryTypeId,
        this.inchargeId,
        this.noOfBed,
        this.userId,
        this.active,
        this.branchId,
        this.branch,
        this.tenantId,
        this.surgeryType,
        this.user,
        this.postOperativeRooms});

  OperationRoom.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    roomNumber = json['RoomNumber'];
    roomName = json['RoomName'];
    surgeryTypeId = json['SurgeryTypeId'];
    inchargeId = json['InchargeId'];
    noOfBed = json['NoOfBed'];
    userId = json['UserId'];
    active = json['Active'];
    branchId = json['BranchId'];
    branch = json['Branch'];
    tenantId = json['TenantId'];
    surgeryType = json['SurgeryType'] != null
        ? new SurgeryType.fromJson(json['SurgeryType'])
        : null;
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    if (json['PostOperativeRooms'] != null) {
      postOperativeRooms = <PostOperativeRooms>[];
      json['PostOperativeRooms'].forEach((v) {
        postOperativeRooms!.add(new PostOperativeRooms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['RoomNumber'] = this.roomNumber;
    data['RoomName'] = this.roomName;
    data['SurgeryTypeId'] = this.surgeryTypeId;
    data['InchargeId'] = this.inchargeId;
    data['NoOfBed'] = this.noOfBed;
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
    data['TenantId'] = this.tenantId;
    if (this.surgeryType != null) {
      data['SurgeryType'] = this.surgeryType!.toJson();
    }
    if (this.user != null) {
      data['User'] = this.user!.toJson();
    }
    if (this.postOperativeRooms != null) {
      data['PostOperativeRooms'] =
          this.postOperativeRooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  dynamic? id;
  dynamic? contactId;
  dynamic? userName;
  Contact? contact;

  User({this.id, this.contactId, this.userName, this.contact});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    contactId = json['ContactId'];
    userName = json['UserName'];
    contact =
    json['Contact'] != null ? new Contact.fromJson(json['Contact']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['ContactId'] = this.contactId;
    data['UserName'] = this.userName;
    if (this.contact != null) {
      data['Contact'] = this.contact!.toJson();
    }
    return data;
  }
}

class Contact {
  dynamic? id;
  bool? active;
  dynamic? userId;
  dynamic? tenantId;
  dynamic? firstName;
  dynamic? lastName;
  dynamic? phoneNumber;
  dynamic? genderId;
  dynamic? street;
  dynamic? city;
  dynamic? zip;
  dynamic? country;
  dynamic? email;
  dynamic? fax;
  dynamic? webSite;
  dynamic? photo;
  dynamic? isCompany;

  Contact(
      {this.id,
        this.active,
        this.userId,
        this.tenantId,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.genderId,
        this.street,
        this.city,
        this.zip,
        this.country,
        this.email,
        this.fax,
        this.webSite,
        this.photo,
        this.isCompany});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    tenantId = json['TenantId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    phoneNumber = json['PhoneNumber'];
    genderId = json['GenderId'];
    street = json['Street'];
    city = json['City'];
    zip = json['Zip'];
    country = json['Country'];
    email = json['Email'];
    fax = json['Fax'];
    webSite = json['WebSite'];
    photo = json['Photo'];
    isCompany = json['IsCompany'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['TenantId'] = this.tenantId;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['PhoneNumber'] = this.phoneNumber;
    data['GenderId'] = this.genderId;
    data['Street'] = this.street;
    data['City'] = this.city;
    data['Zip'] = this.zip;
    data['Country'] = this.country;
    data['Email'] = this.email;
    data['Fax'] = this.fax;
    data['WebSite'] = this.webSite;
    data['Photo'] = this.photo;
    data['IsCompany'] = this.isCompany;
    return data;
  }
}

class PostOperativeRooms {
  dynamic? id;
  dynamic? operationRoomId;
  dynamic? bedNo;
  bool? occupency;
  dynamic? userId;
  bool? active;
  dynamic? patientId;
  dynamic? operationRoom;
  List<dynamic>? postOperativePatientHistories;

  PostOperativeRooms(
      {this.id,
        this.operationRoomId,
        this.bedNo,
        this.occupency,
        this.userId,
        this.active,
        this.patientId,
        this.operationRoom,
        this.postOperativePatientHistories});

  PostOperativeRooms.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    operationRoomId = json['OperationRoomId'];
    bedNo = json['BedNo'];
    occupency = json['Occupency'];
    userId = json['UserId'];
    active = json['Active'];
    patientId = json['PatientId'];
    operationRoom = json['OperationRoom'];
    /*if (json['PostOperativePatientHistories'] != null) {
      postOperativePatientHistories = <Null>[];
      json['PostOperativePatientHistories'].forEach((v) {
        postOperativePatientHistories!.add(new Null.fromJson(v));
      });
    }*/
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['OperationRoomId'] = this.operationRoomId;
    data['BedNo'] = this.bedNo;
    data['Occupency'] = this.occupency;
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['PatientId'] = this.patientId;
    data['OperationRoom'] = this.operationRoom;
   /* if (this.postOperativePatientHistories != null) {
      data['PostOperativePatientHistories'] =
          this.postOperativePatientHistories!.map((v) => v.toJson()).toList();
    }*/
    return data;
  }
}

class Patient {
  dynamic? id;
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
  bool? isRetired;
  dynamic? patientPrefixId;
  dynamic? patientStatusId;
  dynamic? sex;
  dynamic? oldDob;
  dynamic? relationship;
  dynamic? rank;
  dynamic? unit;
  dynamic? trade;

  Patient(
      {this.id,
        this.oldId,
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
        this.relationship,
        this.rank,
        this.unit,
        this.trade});

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
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
    relationship = json['Relationship'];
    rank = json['Rank'];
    unit = json['Unit'];
    trade = json['Trade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
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
    data['Relationship'] = this.relationship;
    data['Rank'] = this.rank;
    data['Unit'] = this.unit;
    data['Trade'] = this.trade;
    return data;
  }
}

class Item {
  dynamic? name;
  dynamic? genericName;
  dynamic? code;
  dynamic? itemTypeId;
  dynamic? medicalTypeId;
  dynamic? itemCategoryId;
  dynamic? measurementUnitId;
  dynamic? salePrice;
  dynamic? buyPrice;
  dynamic? serviceProviderId;
  bool? referralAllowed;
  dynamic? description;
  dynamic? defaultReferrarFee;
  dynamic? labReportGroupId;
  dynamic? itemType;
  ItemCategory? itemCategory;
  dynamic? measurementUnit;
  dynamic? medicalType;
  dynamic? inventory;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

  Item(
      {this.name,
        this.genericName,
        this.code,
        this.itemTypeId,
        this.medicalTypeId,
        this.itemCategoryId,
        this.measurementUnitId,
        this.salePrice,
        this.buyPrice,
        this.serviceProviderId,
        this.referralAllowed,
        this.description,
        this.defaultReferrarFee,
        this.labReportGroupId,
        this.itemType,
        this.itemCategory,
        this.measurementUnit,
        this.medicalType,
        this.inventory,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Item.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    genericName = json['GenericName'];
    code = json['Code'];
    itemTypeId = json['ItemTypeId'];
    medicalTypeId = json['MedicalTypeId'];
    itemCategoryId = json['ItemCategoryId'];
    measurementUnitId = json['MeasurementUnitId'];
    salePrice = json['SalePrice'];
    buyPrice = json['BuyPrice'];
    serviceProviderId = json['ServiceProviderId'];
    referralAllowed = json['ReferralAllowed'];
    description = json['Description'];
    defaultReferrarFee = json['DefaultReferrarFee'];
    labReportGroupId = json['LabReportGroupId'];
    itemType = json['ItemType'];
    itemCategory = json['ItemCategory'] != null
        ? new ItemCategory.fromJson(json['ItemCategory'])
        : null;
    measurementUnit = json['MeasurementUnit'];
    medicalType = json['MedicalType'];
    inventory = json['Inventory'];
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
    data['GenericName'] = this.genericName;
    data['Code'] = this.code;
    data['ItemTypeId'] = this.itemTypeId;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ItemCategoryId'] = this.itemCategoryId;
    data['MeasurementUnitId'] = this.measurementUnitId;
    data['SalePrice'] = this.salePrice;
    data['BuyPrice'] = this.buyPrice;
    data['ServiceProviderId'] = this.serviceProviderId;
    data['ReferralAllowed'] = this.referralAllowed;
    data['Description'] = this.description;
    data['DefaultReferrarFee'] = this.defaultReferrarFee;
    data['LabReportGroupId'] = this.labReportGroupId;
    data['ItemType'] = this.itemType;
    if (this.itemCategory != null) {
      data['ItemCategory'] = this.itemCategory!.toJson();
    }
    data['MeasurementUnit'] = this.measurementUnit;
    data['MedicalType'] = this.medicalType;
    data['Inventory'] = this.inventory;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class ItemCategory {
  dynamic? name;
  dynamic? medicalTypeId;
  dynamic? referralCommission;
  bool? isPathology;
  dynamic? sampleId;
  List<dynamic>? items;
  List<dynamic>? itemSubCategories;
  dynamic? medicalType;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

  ItemCategory(
      {this.name,
        this.medicalTypeId,
        this.referralCommission,
        this.isPathology,
        this.sampleId,
        this.items,
        this.itemSubCategories,
        this.medicalType,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ItemCategory.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    medicalTypeId = json['MedicalTypeId'];
    referralCommission = json['ReferralCommission'];
    isPathology = json['IsPathology'];
    sampleId = json['SampleId'];
   /* if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemSubCategories'] != null) {
      itemSubCategories = <Null>[];
      json['ItemSubCategories'].forEach((v) {
        itemSubCategories!.add(new Null.fromJson(v));
      });
    }*/
    medicalType = json['MedicalType'];
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
    data['Name'] = this.name;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ReferralCommission'] = this.referralCommission;
    data['IsPathology'] = this.isPathology;
    data['SampleId'] = this.sampleId;
    /*if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.itemSubCategories != null) {
      data['ItemSubCategories'] =
          this.itemSubCategories!.map((v) => v.toJson()).toList();
    }*/
    data['MedicalType'] = this.medicalType;
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