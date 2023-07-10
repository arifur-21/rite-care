/*
class fdsfsd {
  List<Items>? items;
  int? totalItems;

  fdsfsd({this.items, this.totalItems});

  fdsfsd.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    totalItems = json['totalItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['totalItems'] = this.totalItems;
    return data;
  }
}

class Items {
  int? invoiceNo;
  int? patientID;
  String? invoiceDate;
  String? dueDate;
  int? invoiceStatusId;
  int? labStatusId;
  int? totalAmount;
  int? totalDiscount;
  Null? itemDiscount;
  bool? isRefunded;
  bool? isReturn;
  Null? modifiedBy;
  bool? isBothSideDiscount;
  int? discountPercentage;
  Null? discountNote;
  Null? patientAdmission;
  bool? isAnyCompleteItem;
  int? advance;
  Null? vat;
  bool? isVatPaid;
  List<Null>? invoicePayments;
  Patient? patient;
  User? user;
  Null? modifiedByUser;
  Null? labStatus;
  Null? invoiceStatus;
  List<PatientServices>? patientServices;
  List<Null>? refunds;
  List<Null>? patientInvoiceShadows;
  int? amount;
  Null? medicalTypeName;
  bool? isDueCollection;
  int? branchId;
  Null? branch;
  int? tenantId;
  Tenant? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Items(
      {this.invoiceNo,
        this.patientID,
        this.invoiceDate,
        this.dueDate,
        this.invoiceStatusId,
        this.labStatusId,
        this.totalAmount,
        this.totalDiscount,
        this.itemDiscount,
        this.isRefunded,
        this.isReturn,
        this.modifiedBy,
        this.isBothSideDiscount,
        this.discountPercentage,
        this.discountNote,
        this.patientAdmission,
        this.isAnyCompleteItem,
        this.advance,
        this.vat,
        this.isVatPaid,
        this.invoicePayments,
        this.patient,
        this.user,
        this.modifiedByUser,
        this.labStatus,
        this.invoiceStatus,
        this.patientServices,
        this.refunds,
        this.patientInvoiceShadows,
        this.amount,
        this.medicalTypeName,
        this.isDueCollection,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Items.fromJson(Map<String, dynamic> json) {
    invoiceNo = json['InvoiceNo'];
    patientID = json['PatientID'];
    invoiceDate = json['InvoiceDate'];
    dueDate = json['DueDate'];
    invoiceStatusId = json['InvoiceStatusId'];
    labStatusId = json['LabStatusId'];
    totalAmount = json['TotalAmount'];
    totalDiscount = json['TotalDiscount'];
    itemDiscount = json['ItemDiscount'];
    isRefunded = json['IsRefunded'];
    isReturn = json['IsReturn'];
    modifiedBy = json['ModifiedBy'];
    isBothSideDiscount = json['IsBothSideDiscount'];
    discountPercentage = json['DiscountPercentage'];
    discountNote = json['DiscountNote'];
    patientAdmission = json['PatientAdmission'];
    isAnyCompleteItem = json['IsAnyCompleteItem'];
    advance = json['Advance'];
    vat = json['Vat'];
    isVatPaid = json['IsVatPaid'];
    if (json['InvoicePayments'] != null) {
      invoicePayments = <Null>[];
      json['InvoicePayments'].forEach((v) {
        invoicePayments!.add(new Null.fromJson(v));
      });
    }
    patient =
    json['Patient'] != null ? new Patient.fromJson(json['Patient']) : null;
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    modifiedByUser = json['ModifiedByUser'];
    labStatus = json['LabStatus'];
    invoiceStatus = json['InvoiceStatus'];
    if (json['PatientServices'] != null) {
      patientServices = <PatientServices>[];
      json['PatientServices'].forEach((v) {
        patientServices!.add(new PatientServices.fromJson(v));
      });
    }
    if (json['Refunds'] != null) {
      refunds = <Null>[];
      json['Refunds'].forEach((v) {
        refunds!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientInvoiceShadows'] != null) {
      patientInvoiceShadows = <Null>[];
      json['PatientInvoiceShadows'].forEach((v) {
        patientInvoiceShadows!.add(new Null.fromJson(v));
      });
    }
    amount = json['Amount'];
    medicalTypeName = json['MedicalTypeName'];
    isDueCollection = json['IsDueCollection'];
    branchId = json['BranchId'];
    branch = json['Branch'];
    tenantId = json['TenantId'];
    tenant =
    json['Tenant'] != null ? new Tenant.fromJson(json['Tenant']) : null;
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['InvoiceNo'] = this.invoiceNo;
    data['PatientID'] = this.patientID;
    data['InvoiceDate'] = this.invoiceDate;
    data['DueDate'] = this.dueDate;
    data['InvoiceStatusId'] = this.invoiceStatusId;
    data['LabStatusId'] = this.labStatusId;
    data['TotalAmount'] = this.totalAmount;
    data['TotalDiscount'] = this.totalDiscount;
    data['ItemDiscount'] = this.itemDiscount;
    data['IsRefunded'] = this.isRefunded;
    data['IsReturn'] = this.isReturn;
    data['ModifiedBy'] = this.modifiedBy;
    data['IsBothSideDiscount'] = this.isBothSideDiscount;
    data['DiscountPercentage'] = this.discountPercentage;
    data['DiscountNote'] = this.discountNote;
    data['PatientAdmission'] = this.patientAdmission;
    data['IsAnyCompleteItem'] = this.isAnyCompleteItem;
    data['Advance'] = this.advance;
    data['Vat'] = this.vat;
    data['IsVatPaid'] = this.isVatPaid;
    if (this.invoicePayments != null) {
      data['InvoicePayments'] =
          this.invoicePayments!.map((v) => v.toJson()).toList();
    }
    if (this.patient != null) {
      data['Patient'] = this.patient!.toJson();
    }
    if (this.user != null) {
      data['User'] = this.user!.toJson();
    }
    data['ModifiedByUser'] = this.modifiedByUser;
    data['LabStatus'] = this.labStatus;
    data['InvoiceStatus'] = this.invoiceStatus;
    if (this.patientServices != null) {
      data['PatientServices'] =
          this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.refunds != null) {
      data['Refunds'] = this.refunds!.map((v) => v.toJson()).toList();
    }
    if (this.patientInvoiceShadows != null) {
      data['PatientInvoiceShadows'] =
          this.patientInvoiceShadows!.map((v) => v.toJson()).toList();
    }
    data['Amount'] = this.amount;
    data['MedicalTypeName'] = this.medicalTypeName;
    data['IsDueCollection'] = this.isDueCollection;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
    data['TenantId'] = this.tenantId;
    if (this.tenant != null) {
      data['Tenant'] = this.tenant!.toJson();
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

class Patient {
  int? oldId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? genderId;
  Null? bloodGroup;
  Null? bloodGroupId;
  Null? fatherName;
  String? dOB;
  String? nationalId;
  String? occupation;
  String? street;
  String? city;
  String? zip;
  String? country;
  String? email;
  Null? photo;
  String? emergencyNumber;
  String? emergencyContactName;
  String? emergencyContactRelation;
  String? createdDate;
  String? serviceId;
  int? relationshipId;
  int? rankId;
  Null? tradeId;
  int? serviceTypeId;
  Null? rankTypeId;
  String? unitName;
  String? rankName;
  Null? tradeName;
  int? unitId;
  bool? isRetired;
  int? patientPrefixId;
  Null? patientStatusId;
  String? sex;
  Null? oldDob;
  Gender? gender;
  Null? patientPrefix;
  Null? patientStatus;
  List<Null>? memberships;
  List<Null>? patientInvoices;
  List<Null>? patientServices;
  List<Null>? payments;
  List<Null>? doctorAppointments;
  Relationship? relationship;
  Null? rank;
  Null? unit;
  Null? trade;
  Null? parentPatient;
  Null? visitNo;
  int? patientInvoiceShadowId;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Patient(
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

  Patient.fromJson(Map<String, dynamic> json) {
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
    patientPrefix = json['PatientPrefix'];
    patientStatus = json['PatientStatus'];
    if (json['Memberships'] != null) {
      memberships = <Null>[];
      json['Memberships'].forEach((v) {
        memberships!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientInvoices'] != null) {
      patientInvoices = <Null>[];
      json['PatientInvoices'].forEach((v) {
        patientInvoices!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      patientServices = <Null>[];
      json['PatientServices'].forEach((v) {
        patientServices!.add(new Null.fromJson(v));
      });
    }
    if (json['Payments'] != null) {
      payments = <Null>[];
      json['Payments'].forEach((v) {
        payments!.add(new Null.fromJson(v));
      });
    }
    if (json['DoctorAppointments'] != null) {
      doctorAppointments = <Null>[];
      json['DoctorAppointments'].forEach((v) {
        doctorAppointments!.add(new Null.fromJson(v));
      });
    }
    relationship = json['Relationship'] != null
        ? new Relationship.fromJson(json['Relationship'])
        : null;
    rank = json['Rank'];
    unit = json['Unit'];
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
    data['PatientPrefix'] = this.patientPrefix;
    data['PatientStatus'] = this.patientStatus;
    if (this.memberships != null) {
      data['Memberships'] = this.memberships!.map((v) => v.toJson()).toList();
    }
    if (this.patientInvoices != null) {
      data['PatientInvoices'] =
          this.patientInvoices!.map((v) => v.toJson()).toList();
    }
    if (this.patientServices != null) {
      data['PatientServices'] =
          this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.payments != null) {
      data['Payments'] = this.payments!.map((v) => v.toJson()).toList();
    }
    if (this.doctorAppointments != null) {
      data['DoctorAppointments'] =
          this.doctorAppointments!.map((v) => v.toJson()).toList();
    }
    if (this.relationship != null) {
      data['Relationship'] = this.relationship!.toJson();
    }
    data['Rank'] = this.rank;
    data['Unit'] = this.unit;
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
  String? name;
  int? code;
  String? typeName;
  Null? user;
  List<Null>? bloodDonors;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

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
        bloodDonors!.add(new Null.fromJson(v));
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
      data['BloodDonors'] = this.bloodDonors!.map((v) => v.toJson()).toList();
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

class Relationship {
  String? name;
  Null? languageCode;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

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

class User {
  int? contactId;
  String? userName;
  String? password;
  int? roleId;
  bool? isConsolidateReport;
  bool? isHrmUser;
  String? createdDate;
  Null? languageCode;
  int? loginId;
  int? patientStatusId;
  Null? coa;
  Null? hrmAccessToken;
  Null? hrmUrl;
  Null? tenantName;
  Contact? contact;
  Role? role;
  int? userTypeId;
  bool? isPermittedForeignMission;
  bool? isOTApproval;
  Null? expenses;
  Null? patientServices;
  List<UserPatientStatusList>? userPatientStatusList;
  int? importTenantId;
  int? importBranchId;
  List<UserItemCategories>? userItemCategories;
  bool? inActive;
  int? branchId;
  Null? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  User(
      {this.contactId,
        this.userName,
        this.password,
        this.roleId,
        this.isConsolidateReport,
        this.isHrmUser,
        this.createdDate,
        this.languageCode,
        this.loginId,
        this.patientStatusId,
        this.coa,
        this.hrmAccessToken,
        this.hrmUrl,
        this.tenantName,
        this.contact,
        this.role,
        this.userTypeId,
        this.isPermittedForeignMission,
        this.isOTApproval,
        this.expenses,
        this.patientServices,
        this.userPatientStatusList,
        this.importTenantId,
        this.importBranchId,
        this.userItemCategories,
        this.inActive,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  User.fromJson(Map<String, dynamic> json) {
    contactId = json['ContactId'];
    userName = json['UserName'];
    password = json['Password'];
    roleId = json['RoleId'];
    isConsolidateReport = json['IsConsolidateReport'];
    isHrmUser = json['IsHrmUser'];
    createdDate = json['CreatedDate'];
    languageCode = json['LanguageCode'];
    loginId = json['LoginId'];
    patientStatusId = json['PatientStatusId'];
    coa = json['Coa'];
    hrmAccessToken = json['HrmAccessToken'];
    hrmUrl = json['HrmUrl'];
    tenantName = json['TenantName'];
    contact =
    json['Contact'] != null ? new Contact.fromJson(json['Contact']) : null;
    role = json['Role'] != null ? new Role.fromJson(json['Role']) : null;
    userTypeId = json['UserTypeId'];
    isPermittedForeignMission = json['IsPermittedForeignMission'];
    isOTApproval = json['IsOTApproval'];
    expenses = json['Expenses'];
    patientServices = json['PatientServices'];
    if (json['UserPatientStatusList'] != null) {
      userPatientStatusList = <UserPatientStatusList>[];
      json['UserPatientStatusList'].forEach((v) {
        userPatientStatusList!.add(new UserPatientStatusList.fromJson(v));
      });
    }
    importTenantId = json['ImportTenantId'];
    importBranchId = json['ImportBranchId'];
    if (json['UserItemCategories'] != null) {
      userItemCategories = <UserItemCategories>[];
      json['UserItemCategories'].forEach((v) {
        userItemCategories!.add(new UserItemCategories.fromJson(v));
      });
    }
    inActive = json['InActive'];
    branchId = json['BranchId'];
    branch = json['Branch'];
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
    data['ContactId'] = this.contactId;
    data['UserName'] = this.userName;
    data['Password'] = this.password;
    data['RoleId'] = this.roleId;
    data['IsConsolidateReport'] = this.isConsolidateReport;
    data['IsHrmUser'] = this.isHrmUser;
    data['CreatedDate'] = this.createdDate;
    data['LanguageCode'] = this.languageCode;
    data['LoginId'] = this.loginId;
    data['PatientStatusId'] = this.patientStatusId;
    data['Coa'] = this.coa;
    data['HrmAccessToken'] = this.hrmAccessToken;
    data['HrmUrl'] = this.hrmUrl;
    data['TenantName'] = this.tenantName;
    if (this.contact != null) {
      data['Contact'] = this.contact!.toJson();
    }
    if (this.role != null) {
      data['Role'] = this.role!.toJson();
    }
    data['UserTypeId'] = this.userTypeId;
    data['IsPermittedForeignMission'] = this.isPermittedForeignMission;
    data['IsOTApproval'] = this.isOTApproval;
    data['Expenses'] = this.expenses;
    data['PatientServices'] = this.patientServices;
    if (this.userPatientStatusList != null) {
      data['UserPatientStatusList'] =
          this.userPatientStatusList!.map((v) => v.toJson()).toList();
    }
    data['ImportTenantId'] = this.importTenantId;
    data['ImportBranchId'] = this.importBranchId;
    if (this.userItemCategories != null) {
      data['UserItemCategories'] =
          this.userItemCategories!.map((v) => v.toJson()).toList();
    }
    data['InActive'] = this.inActive;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
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

class Contact {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? genderId;
  Null? street;
  Null? city;
  Null? zip;
  String? country;
  String? email;
  Null? fax;
  Null? webSite;
  Null? photo;
  Null? isCompany;
  List<Null>? serviceProviders;
  int? serviceProviderType;
  Gender? gender;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Contact(
      {this.firstName,
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
        this.isCompany,
        this.serviceProviders,
        this.serviceProviderType,
        this.gender,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Contact.fromJson(Map<String, dynamic> json) {
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
    if (json['ServiceProviders'] != null) {
      serviceProviders = <Null>[];
      json['ServiceProviders'].forEach((v) {
        serviceProviders!.add(new Null.fromJson(v));
      });
    }
    serviceProviderType = json['ServiceProviderType'];
    gender =
    json['Gender'] != null ? new Gender.fromJson(json['Gender']) : null;
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
    if (this.serviceProviders != null) {
      data['ServiceProviders'] =
          this.serviceProviders!.map((v) => v.toJson()).toList();
    }
    data['ServiceProviderType'] = this.serviceProviderType;
    if (this.gender != null) {
      data['Gender'] = this.gender!.toJson();
    }
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

class Role {
  String? name;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Role(
      {this.name,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Role.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
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

class UserPatientStatusList {
  int? patientStatusId;
  Null? userId;
  bool? isSelected;
  Null? createdDate;
  Null? user;
  PatientStatus? patientStatus;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  UserPatientStatusList(
      {this.patientStatusId,
        this.userId,
        this.isSelected,
        this.createdDate,
        this.user,
        this.patientStatus,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  UserPatientStatusList.fromJson(Map<String, dynamic> json) {
    patientStatusId = json['PatientStatusId'];
    userId = json['UserId'];
    isSelected = json['IsSelected'];
    createdDate = json['CreatedDate'];
    user = json['User'];
    patientStatus = json['PatientStatus'] != null
        ? new PatientStatus.fromJson(json['PatientStatus'])
        : null;
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
    id = json['Id'];
    active = json['Active'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PatientStatusId'] = this.patientStatusId;
    data['UserId'] = this.userId;
    data['IsSelected'] = this.isSelected;
    data['CreatedDate'] = this.createdDate;
    data['User'] = this.user;
    if (this.patientStatus != null) {
      data['PatientStatus'] = this.patientStatus!.toJson();
    }
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class PatientStatus {
  String? name;
  String? prefix;
  Null? languageCode;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  PatientStatus(
      {this.name,
        this.prefix,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  PatientStatus.fromJson(Map<String, dynamic> json) {
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

class UserItemCategories {
  int? itemCategoryId;
  Null? userId;
  bool? isSelected;
  Null? createdDate;
  Null? user;
  Null? itemCategory;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  UserItemCategories(
      {this.itemCategoryId,
        this.userId,
        this.isSelected,
        this.createdDate,
        this.user,
        this.itemCategory,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  UserItemCategories.fromJson(Map<String, dynamic> json) {
    itemCategoryId = json['ItemCategoryId'];
    userId = json['UserId'];
    isSelected = json['IsSelected'];
    createdDate = json['CreatedDate'];
    user = json['User'];
    itemCategory = json['ItemCategory'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
    id = json['Id'];
    active = json['Active'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ItemCategoryId'] = this.itemCategoryId;
    data['UserId'] = this.userId;
    data['IsSelected'] = this.isSelected;
    data['CreatedDate'] = this.createdDate;
    data['User'] = this.user;
    data['ItemCategory'] = this.itemCategory;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class PatientServices {
  int? patientID;
  int? itemId;
  int? invoiceID;
  Null? receiptId;
  Null? patientAdmissionId;
  Null? nurseStationId;
  int? serviceListPrice;
  int? serviceActualPrice;
  int? serviceQuantity;
  String? serviceDate;
  Null? referralPaidDate;
  Null? modifiedDate;
  Null? checkoutTime;
  int? serviceProviderId;
  int? doctorId;
  String? doctorName;
  Null? returnQantity;
  Null? returnPrice;
  Null? returnPaid;
  Null? referrerPaidUserId;
  Null? referrerPaidUser;
  int? discount;
  bool? discountAfterInvoice;
  bool? isBothSideDiscount;
  int? discountPercentage;
  bool? refund;
  Null? refundApprovedBy;
  Null? refundStatus;
  bool? refundApproval;
  bool? isReturn;
  Null? refundNote;
  bool? billed;
  int? referralFee;
  bool? referralFeePaid;
  int? referralFeeActual;
  String? deliveryDate;
  Null? deliveryTime;
  Null? reportFormatName;
  int? labStatusId;
  Null? inventoryId;
  int? modifiedBy;
  Null? prescriptionItemId;
  int? sampleId;
  String? sl;
  bool? isSpecialItem;
  Null? packageItemId;
  Null? packageSeviceId;
  Null? slideNumber;
  Null? signApprovedDate;
  int? signApprovedBy;
  bool? isForeignMission;
  bool? isBarCodePrint;
  Null? signApprovedByUser;
  Item? item;
  Null? labStatus;
  Null? inventory;
  Null? user;
  ModifiedByUser? modifiedByUser;
  Patient? patient;
  Null? patientInvoice;
  ServiceProvider? serviceProvider;
  Null? prescriptionItem;
  ServiceProvider? doctor;
  Null? nurseStation;
  Null? receiptPayment;
  Null? patientAdmission;
  List<Null>? imagingDetails;
  Null? patientServicePayments;
  int? signContactId;
  bool? isgroup;
  Null? patientServiceIds;
  Null? groupItemIds;
  int? medicalTypeId;
  int? beforeReturnPrice;
  int? returnBackupPrice;
  int? fullReturnServiceListPrice;
  int? amount;
  Null? medicalTypeName;
  Null? previousDoctorName;
  bool? hasImage;
  int? branchId;
  Null? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  PatientServices(
      {this.patientID,
        this.itemId,
        this.invoiceID,
        this.receiptId,
        this.patientAdmissionId,
        this.nurseStationId,
        this.serviceListPrice,
        this.serviceActualPrice,
        this.serviceQuantity,
        this.serviceDate,
        this.referralPaidDate,
        this.modifiedDate,
        this.checkoutTime,
        this.serviceProviderId,
        this.doctorId,
        this.doctorName,
        this.returnQantity,
        this.returnPrice,
        this.returnPaid,
        this.referrerPaidUserId,
        this.referrerPaidUser,
        this.discount,
        this.discountAfterInvoice,
        this.isBothSideDiscount,
        this.discountPercentage,
        this.refund,
        this.refundApprovedBy,
        this.refundStatus,
        this.refundApproval,
        this.isReturn,
        this.refundNote,
        this.billed,
        this.referralFee,
        this.referralFeePaid,
        this.referralFeeActual,
        this.deliveryDate,
        this.deliveryTime,
        this.reportFormatName,
        this.labStatusId,
        this.inventoryId,
        this.modifiedBy,
        this.prescriptionItemId,
        this.sampleId,
        this.sl,
        this.isSpecialItem,
        this.packageItemId,
        this.packageSeviceId,
        this.slideNumber,
        this.signApprovedDate,
        this.signApprovedBy,
        this.isForeignMission,
        this.isBarCodePrint,
        this.signApprovedByUser,
        this.item,
        this.labStatus,
        this.inventory,
        this.user,
        this.modifiedByUser,
        this.patient,
        this.patientInvoice,
        this.serviceProvider,
        this.prescriptionItem,
        this.doctor,
        this.nurseStation,
        this.receiptPayment,
        this.patientAdmission,
        this.imagingDetails,
        this.patientServicePayments,
        this.signContactId,
        this.isgroup,
        this.patientServiceIds,
        this.groupItemIds,
        this.medicalTypeId,
        this.beforeReturnPrice,
        this.returnBackupPrice,
        this.fullReturnServiceListPrice,
        this.amount,
        this.medicalTypeName,
        this.previousDoctorName,
        this.hasImage,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  PatientServices.fromJson(Map<String, dynamic> json) {
    patientID = json['PatientID'];
    itemId = json['ItemId'];
    invoiceID = json['InvoiceID'];
    receiptId = json['ReceiptId'];
    patientAdmissionId = json['PatientAdmissionId'];
    nurseStationId = json['NurseStationId'];
    serviceListPrice = json['ServiceListPrice'];
    serviceActualPrice = json['ServiceActualPrice'];
    serviceQuantity = json['ServiceQuantity'];
    serviceDate = json['ServiceDate'];
    referralPaidDate = json['ReferralPaidDate'];
    modifiedDate = json['ModifiedDate'];
    checkoutTime = json['CheckoutTime'];
    serviceProviderId = json['ServiceProviderId'];
    doctorId = json['DoctorId'];
    doctorName = json['DoctorName'];
    returnQantity = json['ReturnQantity'];
    returnPrice = json['ReturnPrice'];
    returnPaid = json['ReturnPaid'];
    referrerPaidUserId = json['ReferrerPaidUserId'];
    referrerPaidUser = json['ReferrerPaidUser'];
    discount = json['Discount'];
    discountAfterInvoice = json['DiscountAfterInvoice'];
    isBothSideDiscount = json['IsBothSideDiscount'];
    discountPercentage = json['DiscountPercentage'];
    refund = json['Refund'];
    refundApprovedBy = json['RefundApprovedBy'];
    refundStatus = json['RefundStatus'];
    refundApproval = json['RefundApproval'];
    isReturn = json['IsReturn'];
    refundNote = json['RefundNote'];
    billed = json['Billed'];
    referralFee = json['ReferralFee'];
    referralFeePaid = json['ReferralFeePaid'];
    referralFeeActual = json['ReferralFeeActual'];
    deliveryDate = json['DeliveryDate'];
    deliveryTime = json['DeliveryTime'];
    reportFormatName = json['ReportFormatName'];
    labStatusId = json['LabStatusId'];
    inventoryId = json['InventoryId'];
    modifiedBy = json['ModifiedBy'];
    prescriptionItemId = json['PrescriptionItemId'];
    sampleId = json['SampleId'];
    sl = json['Sl'];
    isSpecialItem = json['IsSpecialItem'];
    packageItemId = json['PackageItemId'];
    packageSeviceId = json['PackageSeviceId'];
    slideNumber = json['SlideNumber'];
    signApprovedDate = json['SignApprovedDate'];
    signApprovedBy = json['SignApprovedBy'];
    isForeignMission = json['IsForeignMission'];
    isBarCodePrint = json['IsBarCodePrint'];
    signApprovedByUser = json['SignApprovedByUser'];
    item = json['Item'] != null ? new Item.fromJson(json['Item']) : null;
    labStatus = json['LabStatus'];
    inventory = json['Inventory'];
    user = json['User'];
    modifiedByUser = json['ModifiedByUser'] != null
        ? new ModifiedByUser.fromJson(json['ModifiedByUser'])
        : null;
    patient =
    json['Patient'] != null ? new Patient.fromJson(json['Patient']) : null;
    patientInvoice = json['PatientInvoice'];
    serviceProvider = json['ServiceProvider'] != null
        ? new ServiceProvider.fromJson(json['ServiceProvider'])
        : null;
    prescriptionItem = json['PrescriptionItem'];
    doctor = json['Doctor'] != null
        ? new ServiceProvider.fromJson(json['Doctor'])
        : null;
    nurseStation = json['NurseStation'];
    receiptPayment = json['ReceiptPayment'];
    patientAdmission = json['PatientAdmission'];
    if (json['ImagingDetails'] != null) {
      imagingDetails = <Null>[];
      json['ImagingDetails'].forEach((v) {
        imagingDetails!.add(new Null.fromJson(v));
      });
    }
    patientServicePayments = json['PatientServicePayments'];
    signContactId = json['SignContactId'];
    isgroup = json['Isgroup'];
    patientServiceIds = json['PatientServiceIds'];
    groupItemIds = json['GroupItemIds'];
    medicalTypeId = json['MedicalTypeId'];
    beforeReturnPrice = json['BeforeReturnPrice'];
    returnBackupPrice = json['ReturnBackupPrice'];
    fullReturnServiceListPrice = json['FullReturnServiceListPrice'];
    amount = json['Amount'];
    medicalTypeName = json['MedicalTypeName'];
    previousDoctorName = json['PreviousDoctorName'];
    hasImage = json['HasImage'];
    branchId = json['BranchId'];
    branch = json['Branch'];
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
    data['PatientID'] = this.patientID;
    data['ItemId'] = this.itemId;
    data['InvoiceID'] = this.invoiceID;
    data['ReceiptId'] = this.receiptId;
    data['PatientAdmissionId'] = this.patientAdmissionId;
    data['NurseStationId'] = this.nurseStationId;
    data['ServiceListPrice'] = this.serviceListPrice;
    data['ServiceActualPrice'] = this.serviceActualPrice;
    data['ServiceQuantity'] = this.serviceQuantity;
    data['ServiceDate'] = this.serviceDate;
    data['ReferralPaidDate'] = this.referralPaidDate;
    data['ModifiedDate'] = this.modifiedDate;
    data['CheckoutTime'] = this.checkoutTime;
    data['ServiceProviderId'] = this.serviceProviderId;
    data['DoctorId'] = this.doctorId;
    data['DoctorName'] = this.doctorName;
    data['ReturnQantity'] = this.returnQantity;
    data['ReturnPrice'] = this.returnPrice;
    data['ReturnPaid'] = this.returnPaid;
    data['ReferrerPaidUserId'] = this.referrerPaidUserId;
    data['ReferrerPaidUser'] = this.referrerPaidUser;
    data['Discount'] = this.discount;
    data['DiscountAfterInvoice'] = this.discountAfterInvoice;
    data['IsBothSideDiscount'] = this.isBothSideDiscount;
    data['DiscountPercentage'] = this.discountPercentage;
    data['Refund'] = this.refund;
    data['RefundApprovedBy'] = this.refundApprovedBy;
    data['RefundStatus'] = this.refundStatus;
    data['RefundApproval'] = this.refundApproval;
    data['IsReturn'] = this.isReturn;
    data['RefundNote'] = this.refundNote;
    data['Billed'] = this.billed;
    data['ReferralFee'] = this.referralFee;
    data['ReferralFeePaid'] = this.referralFeePaid;
    data['ReferralFeeActual'] = this.referralFeeActual;
    data['DeliveryDate'] = this.deliveryDate;
    data['DeliveryTime'] = this.deliveryTime;
    data['ReportFormatName'] = this.reportFormatName;
    data['LabStatusId'] = this.labStatusId;
    data['InventoryId'] = this.inventoryId;
    data['ModifiedBy'] = this.modifiedBy;
    data['PrescriptionItemId'] = this.prescriptionItemId;
    data['SampleId'] = this.sampleId;
    data['Sl'] = this.sl;
    data['IsSpecialItem'] = this.isSpecialItem;
    data['PackageItemId'] = this.packageItemId;
    data['PackageSeviceId'] = this.packageSeviceId;
    data['SlideNumber'] = this.slideNumber;
    data['SignApprovedDate'] = this.signApprovedDate;
    data['SignApprovedBy'] = this.signApprovedBy;
    data['IsForeignMission'] = this.isForeignMission;
    data['IsBarCodePrint'] = this.isBarCodePrint;
    data['SignApprovedByUser'] = this.signApprovedByUser;
    if (this.item != null) {
      data['Item'] = this.item!.toJson();
    }
    data['LabStatus'] = this.labStatus;
    data['Inventory'] = this.inventory;
    data['User'] = this.user;
    if (this.modifiedByUser != null) {
      data['ModifiedByUser'] = this.modifiedByUser!.toJson();
    }
    if (this.patient != null) {
      data['Patient'] = this.patient!.toJson();
    }
    data['PatientInvoice'] = this.patientInvoice;
    if (this.serviceProvider != null) {
      data['ServiceProvider'] = this.serviceProvider!.toJson();
    }
    data['PrescriptionItem'] = this.prescriptionItem;
    if (this.doctor != null) {
      data['Doctor'] = this.doctor!.toJson();
    }
    data['NurseStation'] = this.nurseStation;
    data['ReceiptPayment'] = this.receiptPayment;
    data['PatientAdmission'] = this.patientAdmission;
    if (this.imagingDetails != null) {
      data['ImagingDetails'] =
          this.imagingDetails!.map((v) => v.toJson()).toList();
    }
    data['PatientServicePayments'] = this.patientServicePayments;
    data['SignContactId'] = this.signContactId;
    data['Isgroup'] = this.isgroup;
    data['PatientServiceIds'] = this.patientServiceIds;
    data['GroupItemIds'] = this.groupItemIds;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['BeforeReturnPrice'] = this.beforeReturnPrice;
    data['ReturnBackupPrice'] = this.returnBackupPrice;
    data['FullReturnServiceListPrice'] = this.fullReturnServiceListPrice;
    data['Amount'] = this.amount;
    data['MedicalTypeName'] = this.medicalTypeName;
    data['PreviousDoctorName'] = this.previousDoctorName;
    data['HasImage'] = this.hasImage;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
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

class Item {
  String? name;
  Null? genericName;
  String? code;
  Null? companyName;
  int? itemTypeId;
  int? medicalTypeId;
  int? itemSpecimentId;
  int? itemCategoryId;
  Null? itemSubCategoryId;
  Null? itemGroupCategoryId;
  Null? itemSubGroupCategoryId;
  Null? supplierOrVendorId;
  Null? strength;
  Null? formulation;
  bool? isAntibiotic;
  Null? medicineTypeId;
  bool? isSurgeryItem;
  Null? measurementUnitId;
  int? salePrice;
  int? buyPrice;
  Null? serviceProviderId;
  bool? referralAllowed;
  String? description;
  int? defaultReferrarFee;
  int? labReportGroupId;
  Null? nurseStationId;
  Null? nurseStation;
  int? taskTypeId;
  Null? taskType;
  int? labCountDay;
  bool? isLabReportItem;
  bool? isActive;
  String? createdDate;
  bool? noEquipment;
  bool? isCustomTemplate;
  int? labItemSerialNo;
  bool? noDiscount;
  String? shortCode;
  bool? isSlideRequired;
  List<Null>? bedOccupancies;
  List<Null>? inventories;
  List<Null>? itemItemGroup;
  List<Null>? itemDefaults;
  List<Null>? itemReorders;
  List<Null>? initialSetupItems;
  List<Null>? serviceProviderSurgeryPrices;
  Null? itemType;
  ItemSpeciment? itemSpeciment;
  ItemCategory? itemCategory;
  Null? itemSubCategory;
  Null? itemGroupCategory;
  Null? itemSubGroupCategory;
  Null? medicineType;
  Null? measurementUnit;
  Null? medicalType;
  Null? serviceProvider;
  LabReportGroup? labReportGroup;
  Null? supplierOrVendor;
  List<Null>? packageDetails;
  List<Null>? patientServices;
  List<Null>? receiptPayments;
  List<Null>? inventoryItem;
  List<Null>? itemRequisition;
  List<Null>? itemSuplierOrVendors;
  Null? itemwiseValues;
  String? expiryDate;
  Null? inventory;
  int? quantity;
  Null? prescriptionItemId;
  int? parentItemId;
  int? parentCategoryId;
  bool? isSpecialItem;
  String? groupFormatName;
  int? branchId;
  Null? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Item(
      {this.name,
        this.genericName,
        this.code,
        this.companyName,
        this.itemTypeId,
        this.medicalTypeId,
        this.itemSpecimentId,
        this.itemCategoryId,
        this.itemSubCategoryId,
        this.itemGroupCategoryId,
        this.itemSubGroupCategoryId,
        this.supplierOrVendorId,
        this.strength,
        this.formulation,
        this.isAntibiotic,
        this.medicineTypeId,
        this.isSurgeryItem,
        this.measurementUnitId,
        this.salePrice,
        this.buyPrice,
        this.serviceProviderId,
        this.referralAllowed,
        this.description,
        this.defaultReferrarFee,
        this.labReportGroupId,
        this.nurseStationId,
        this.nurseStation,
        this.taskTypeId,
        this.taskType,
        this.labCountDay,
        this.isLabReportItem,
        this.isActive,
        this.createdDate,
        this.noEquipment,
        this.isCustomTemplate,
        this.labItemSerialNo,
        this.noDiscount,
        this.shortCode,
        this.isSlideRequired,
        this.bedOccupancies,
        this.inventories,
        this.itemItemGroup,
        this.itemDefaults,
        this.itemReorders,
        this.initialSetupItems,
        this.serviceProviderSurgeryPrices,
        this.itemType,
        this.itemSpeciment,
        this.itemCategory,
        this.itemSubCategory,
        this.itemGroupCategory,
        this.itemSubGroupCategory,
        this.medicineType,
        this.measurementUnit,
        this.medicalType,
        this.serviceProvider,
        this.labReportGroup,
        this.supplierOrVendor,
        this.packageDetails,
        this.patientServices,
        this.receiptPayments,
        this.inventoryItem,
        this.itemRequisition,
        this.itemSuplierOrVendors,
        this.itemwiseValues,
        this.expiryDate,
        this.inventory,
        this.quantity,
        this.prescriptionItemId,
        this.parentItemId,
        this.parentCategoryId,
        this.isSpecialItem,
        this.groupFormatName,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
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
    companyName = json['CompanyName'];
    itemTypeId = json['ItemTypeId'];
    medicalTypeId = json['MedicalTypeId'];
    itemSpecimentId = json['ItemSpecimentId'];
    itemCategoryId = json['ItemCategoryId'];
    itemSubCategoryId = json['ItemSubCategoryId'];
    itemGroupCategoryId = json['ItemGroupCategoryId'];
    itemSubGroupCategoryId = json['ItemSubGroupCategoryId'];
    supplierOrVendorId = json['SupplierOrVendorId'];
    strength = json['Strength'];
    formulation = json['Formulation'];
    isAntibiotic = json['IsAntibiotic'];
    medicineTypeId = json['MedicineTypeId'];
    isSurgeryItem = json['IsSurgeryItem'];
    measurementUnitId = json['MeasurementUnitId'];
    salePrice = json['SalePrice'];
    buyPrice = json['BuyPrice'];
    serviceProviderId = json['ServiceProviderId'];
    referralAllowed = json['ReferralAllowed'];
    description = json['Description'];
    defaultReferrarFee = json['DefaultReferrarFee'];
    labReportGroupId = json['LabReportGroupId'];
    nurseStationId = json['NurseStationId'];
    nurseStation = json['NurseStation'];
    taskTypeId = json['TaskTypeId'];
    taskType = json['TaskType'];
    labCountDay = json['LabCountDay'];
    isLabReportItem = json['IsLabReportItem'];
    isActive = json['IsActive'];
    createdDate = json['CreatedDate'];
    noEquipment = json['NoEquipment'];
    isCustomTemplate = json['IsCustomTemplate'];
    labItemSerialNo = json['LabItemSerialNo'];
    noDiscount = json['NoDiscount'];
    shortCode = json['ShortCode'];
    isSlideRequired = json['IsSlideRequired'];
    if (json['BedOccupancies'] != null) {
      bedOccupancies = <Null>[];
      json['BedOccupancies'].forEach((v) {
        bedOccupancies!.add(new Null.fromJson(v));
      });
    }
    if (json['Inventories'] != null) {
      inventories = <Null>[];
      json['Inventories'].forEach((v) {
        inventories!.add(new Null.fromJson(v));
      });
    }
    if (json['Item_ItemGroup'] != null) {
      itemItemGroup = <Null>[];
      json['Item_ItemGroup'].forEach((v) {
        itemItemGroup!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemDefaults'] != null) {
      itemDefaults = <Null>[];
      json['ItemDefaults'].forEach((v) {
        itemDefaults!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemReorders'] != null) {
      itemReorders = <Null>[];
      json['ItemReorders'].forEach((v) {
        itemReorders!.add(new Null.fromJson(v));
      });
    }
    if (json['InitialSetupItems'] != null) {
      initialSetupItems = <Null>[];
      json['InitialSetupItems'].forEach((v) {
        initialSetupItems!.add(new Null.fromJson(v));
      });
    }
    if (json['ServiceProviderSurgeryPrices'] != null) {
      serviceProviderSurgeryPrices = <Null>[];
      json['ServiceProviderSurgeryPrices'].forEach((v) {
        serviceProviderSurgeryPrices!.add(new Null.fromJson(v));
      });
    }
    itemType = json['ItemType'];
    itemSpeciment = json['ItemSpeciment'] != null
        ? new ItemSpeciment.fromJson(json['ItemSpeciment'])
        : null;
    itemCategory = json['ItemCategory'] != null
        ? new ItemCategory.fromJson(json['ItemCategory'])
        : null;
    itemSubCategory = json['ItemSubCategory'];
    itemGroupCategory = json['ItemGroupCategory'];
    itemSubGroupCategory = json['ItemSubGroupCategory'];
    medicineType = json['MedicineType'];
    measurementUnit = json['MeasurementUnit'];
    medicalType = json['MedicalType'];
    serviceProvider = json['ServiceProvider'];
    labReportGroup = json['LabReportGroup'] != null
        ? new LabReportGroup.fromJson(json['LabReportGroup'])
        : null;
    supplierOrVendor = json['SupplierOrVendor'];
    if (json['PackageDetails'] != null) {
      packageDetails = <Null>[];
      json['PackageDetails'].forEach((v) {
        packageDetails!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      patientServices = <Null>[];
      json['PatientServices'].forEach((v) {
        patientServices!.add(new Null.fromJson(v));
      });
    }
    if (json['ReceiptPayments'] != null) {
      receiptPayments = <Null>[];
      json['ReceiptPayments'].forEach((v) {
        receiptPayments!.add(new Null.fromJson(v));
      });
    }
    if (json['InventoryItem'] != null) {
      inventoryItem = <Null>[];
      json['InventoryItem'].forEach((v) {
        inventoryItem!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemRequisition'] != null) {
      itemRequisition = <Null>[];
      json['ItemRequisition'].forEach((v) {
        itemRequisition!.add(new Null.fromJson(v));
      });
    }
    if (json['Item_SuplierOrVendors'] != null) {
      itemSuplierOrVendors = <Null>[];
      json['Item_SuplierOrVendors'].forEach((v) {
        itemSuplierOrVendors!.add(new Null.fromJson(v));
      });
    }
    itemwiseValues = json['ItemwiseValues'];
    expiryDate = json['ExpiryDate'];
    inventory = json['Inventory'];
    quantity = json['Quantity'];
    prescriptionItemId = json['PrescriptionItemId'];
    parentItemId = json['ParentItemId'];
    parentCategoryId = json['ParentCategoryId'];
    isSpecialItem = json['IsSpecialItem'];
    groupFormatName = json['GroupFormatName'];
    branchId = json['BranchId'];
    branch = json['Branch'];
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
    data['GenericName'] = this.genericName;
    data['Code'] = this.code;
    data['CompanyName'] = this.companyName;
    data['ItemTypeId'] = this.itemTypeId;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ItemSpecimentId'] = this.itemSpecimentId;
    data['ItemCategoryId'] = this.itemCategoryId;
    data['ItemSubCategoryId'] = this.itemSubCategoryId;
    data['ItemGroupCategoryId'] = this.itemGroupCategoryId;
    data['ItemSubGroupCategoryId'] = this.itemSubGroupCategoryId;
    data['SupplierOrVendorId'] = this.supplierOrVendorId;
    data['Strength'] = this.strength;
    data['Formulation'] = this.formulation;
    data['IsAntibiotic'] = this.isAntibiotic;
    data['MedicineTypeId'] = this.medicineTypeId;
    data['IsSurgeryItem'] = this.isSurgeryItem;
    data['MeasurementUnitId'] = this.measurementUnitId;
    data['SalePrice'] = this.salePrice;
    data['BuyPrice'] = this.buyPrice;
    data['ServiceProviderId'] = this.serviceProviderId;
    data['ReferralAllowed'] = this.referralAllowed;
    data['Description'] = this.description;
    data['DefaultReferrarFee'] = this.defaultReferrarFee;
    data['LabReportGroupId'] = this.labReportGroupId;
    data['NurseStationId'] = this.nurseStationId;
    data['NurseStation'] = this.nurseStation;
    data['TaskTypeId'] = this.taskTypeId;
    data['TaskType'] = this.taskType;
    data['LabCountDay'] = this.labCountDay;
    data['IsLabReportItem'] = this.isLabReportItem;
    data['IsActive'] = this.isActive;
    data['CreatedDate'] = this.createdDate;
    data['NoEquipment'] = this.noEquipment;
    data['IsCustomTemplate'] = this.isCustomTemplate;
    data['LabItemSerialNo'] = this.labItemSerialNo;
    data['NoDiscount'] = this.noDiscount;
    data['ShortCode'] = this.shortCode;
    data['IsSlideRequired'] = this.isSlideRequired;
    if (this.bedOccupancies != null) {
      data['BedOccupancies'] =
          this.bedOccupancies!.map((v) => v.toJson()).toList();
    }
    if (this.inventories != null) {
      data['Inventories'] = this.inventories!.map((v) => v.toJson()).toList();
    }
    if (this.itemItemGroup != null) {
      data['Item_ItemGroup'] =
          this.itemItemGroup!.map((v) => v.toJson()).toList();
    }
    if (this.itemDefaults != null) {
      data['ItemDefaults'] = this.itemDefaults!.map((v) => v.toJson()).toList();
    }
    if (this.itemReorders != null) {
      data['ItemReorders'] = this.itemReorders!.map((v) => v.toJson()).toList();
    }
    if (this.initialSetupItems != null) {
      data['InitialSetupItems'] =
          this.initialSetupItems!.map((v) => v.toJson()).toList();
    }
    if (this.serviceProviderSurgeryPrices != null) {
      data['ServiceProviderSurgeryPrices'] =
          this.serviceProviderSurgeryPrices!.map((v) => v.toJson()).toList();
    }
    data['ItemType'] = this.itemType;
    if (this.itemSpeciment != null) {
      data['ItemSpeciment'] = this.itemSpeciment!.toJson();
    }
    if (this.itemCategory != null) {
      data['ItemCategory'] = this.itemCategory!.toJson();
    }
    data['ItemSubCategory'] = this.itemSubCategory;
    data['ItemGroupCategory'] = this.itemGroupCategory;
    data['ItemSubGroupCategory'] = this.itemSubGroupCategory;
    data['MedicineType'] = this.medicineType;
    data['MeasurementUnit'] = this.measurementUnit;
    data['MedicalType'] = this.medicalType;
    data['ServiceProvider'] = this.serviceProvider;
    if (this.labReportGroup != null) {
      data['LabReportGroup'] = this.labReportGroup!.toJson();
    }
    data['SupplierOrVendor'] = this.supplierOrVendor;
    if (this.packageDetails != null) {
      data['PackageDetails'] =
          this.packageDetails!.map((v) => v.toJson()).toList();
    }
    if (this.patientServices != null) {
      data['PatientServices'] =
          this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.receiptPayments != null) {
      data['ReceiptPayments'] =
          this.receiptPayments!.map((v) => v.toJson()).toList();
    }
    if (this.inventoryItem != null) {
      data['InventoryItem'] =
          this.inventoryItem!.map((v) => v.toJson()).toList();
    }
    if (this.itemRequisition != null) {
      data['ItemRequisition'] =
          this.itemRequisition!.map((v) => v.toJson()).toList();
    }
    if (this.itemSuplierOrVendors != null) {
      data['Item_SuplierOrVendors'] =
          this.itemSuplierOrVendors!.map((v) => v.toJson()).toList();
    }
    data['ItemwiseValues'] = this.itemwiseValues;
    data['ExpiryDate'] = this.expiryDate;
    data['Inventory'] = this.inventory;
    data['Quantity'] = this.quantity;
    data['PrescriptionItemId'] = this.prescriptionItemId;
    data['ParentItemId'] = this.parentItemId;
    data['ParentCategoryId'] = this.parentCategoryId;
    data['IsSpecialItem'] = this.isSpecialItem;
    data['GroupFormatName'] = this.groupFormatName;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
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

class ItemSpeciment {
  String? name;
  int? medicalTypeId;
  List<Null>? items;
  Null? medicalType;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  ItemSpeciment(
      {this.name,
        this.medicalTypeId,
        this.items,
        this.medicalType,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ItemSpeciment.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    medicalTypeId = json['MedicalTypeId'];
    if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }
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
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
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

class ItemCategory {
  String? name;
  int? medicalTypeId;
  int? referralCommission;
  bool? isPathology;
  int? sampleId;
  List<Null>? items;
  List<Null>? itemSubCategories;
  Null? medicalType;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
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
    if (json['Items'] != null) {
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
    }
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
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.itemSubCategories != null) {
      data['ItemSubCategories'] =
          this.itemSubCategories!.map((v) => v.toJson()).toList();
    }
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

class LabReportGroup {
  String? name;
  List<Null>? items;
  int? branchId;
  Null? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  LabReportGroup(
      {this.name,
        this.items,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  LabReportGroup.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }
    branchId = json['BranchId'];
    branch = json['Branch'];
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
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
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

class ModifiedByUser {
  int? contactId;
  String? userName;
  Null? password;
  int? roleId;
  bool? isConsolidateReport;
  bool? isHrmUser;
  String? createdDate;
  Null? languageCode;
  int? loginId;
  int? patientStatusId;
  Null? coa;
  Null? hrmAccessToken;
  Null? hrmUrl;
  Null? tenantName;
  Contact? contact;
  Null? role;
  int? userTypeId;
  bool? isPermittedForeignMission;
  bool? isOTApproval;
  Null? expenses;
  Null? patientServices;
  List<UserPatientStatusList>? userPatientStatusList;
  int? importTenantId;
  int? importBranchId;
  List<UserItemCategories>? userItemCategories;
  bool? inActive;
  int? branchId;
  Null? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  ModifiedByUser(
      {this.contactId,
        this.userName,
        this.password,
        this.roleId,
        this.isConsolidateReport,
        this.isHrmUser,
        this.createdDate,
        this.languageCode,
        this.loginId,
        this.patientStatusId,
        this.coa,
        this.hrmAccessToken,
        this.hrmUrl,
        this.tenantName,
        this.contact,
        this.role,
        this.userTypeId,
        this.isPermittedForeignMission,
        this.isOTApproval,
        this.expenses,
        this.patientServices,
        this.userPatientStatusList,
        this.importTenantId,
        this.importBranchId,
        this.userItemCategories,
        this.inActive,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ModifiedByUser.fromJson(Map<String, dynamic> json) {
    contactId = json['ContactId'];
    userName = json['UserName'];
    password = json['Password'];
    roleId = json['RoleId'];
    isConsolidateReport = json['IsConsolidateReport'];
    isHrmUser = json['IsHrmUser'];
    createdDate = json['CreatedDate'];
    languageCode = json['LanguageCode'];
    loginId = json['LoginId'];
    patientStatusId = json['PatientStatusId'];
    coa = json['Coa'];
    hrmAccessToken = json['HrmAccessToken'];
    hrmUrl = json['HrmUrl'];
    tenantName = json['TenantName'];
    contact =
    json['Contact'] != null ? new Contact.fromJson(json['Contact']) : null;
    role = json['Role'];
    userTypeId = json['UserTypeId'];
    isPermittedForeignMission = json['IsPermittedForeignMission'];
    isOTApproval = json['IsOTApproval'];
    expenses = json['Expenses'];
    patientServices = json['PatientServices'];
    if (json['UserPatientStatusList'] != null) {
      userPatientStatusList = <UserPatientStatusList>[];
      json['UserPatientStatusList'].forEach((v) {
        userPatientStatusList!.add(new UserPatientStatusList.fromJson(v));
      });
    }
    importTenantId = json['ImportTenantId'];
    importBranchId = json['ImportBranchId'];
    if (json['UserItemCategories'] != null) {
      userItemCategories = <UserItemCategories>[];
      json['UserItemCategories'].forEach((v) {
        userItemCategories!.add(new UserItemCategories.fromJson(v));
      });
    }
    inActive = json['InActive'];
    branchId = json['BranchId'];
    branch = json['Branch'];
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
    data['ContactId'] = this.contactId;
    data['UserName'] = this.userName;
    data['Password'] = this.password;
    data['RoleId'] = this.roleId;
    data['IsConsolidateReport'] = this.isConsolidateReport;
    data['IsHrmUser'] = this.isHrmUser;
    data['CreatedDate'] = this.createdDate;
    data['LanguageCode'] = this.languageCode;
    data['LoginId'] = this.loginId;
    data['PatientStatusId'] = this.patientStatusId;
    data['Coa'] = this.coa;
    data['HrmAccessToken'] = this.hrmAccessToken;
    data['HrmUrl'] = this.hrmUrl;
    data['TenantName'] = this.tenantName;
    if (this.contact != null) {
      data['Contact'] = this.contact!.toJson();
    }
    data['Role'] = this.role;
    data['UserTypeId'] = this.userTypeId;
    data['IsPermittedForeignMission'] = this.isPermittedForeignMission;
    data['IsOTApproval'] = this.isOTApproval;
    data['Expenses'] = this.expenses;
    data['PatientServices'] = this.patientServices;
    if (this.userPatientStatusList != null) {
      data['UserPatientStatusList'] =
          this.userPatientStatusList!.map((v) => v.toJson()).toList();
    }
    data['ImportTenantId'] = this.importTenantId;
    data['ImportBranchId'] = this.importBranchId;
    if (this.userItemCategories != null) {
      data['UserItemCategories'] =
          this.userItemCategories!.map((v) => v.toJson()).toList();
    }
    data['InActive'] = this.inActive;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
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

class ServiceProvider {
  int? contactId;
  String? title;
  int? serviceProviderTypeId;
  Null? nurseStationId;
  int? departmentId;
  String? degree;
  String? speciality;
  String? description;
  String? code;
  bool? assignedToAllUsers;
  bool? isInHouse;
  bool? isReferer;
  String? designation;
  bool? hasSigningPermission;
  bool? isSurgeon;
  Null? joiningDate;
  String? createdDate;
  int? referrerTypeId;
  Contact? contact;
  Department? department;
  ReferrerType? referrerType;
  List<Null>? items;
  List<Null>? patientAdmissions;
  List<Null>? nurseStationInchargeList;
  ServiceProviderType? serviceProviderType;
  Null? departmentName;
  int? referralFee;
  int? branchId;
  Branch? branch;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  ServiceProvider(
      {this.contactId,
        this.title,
        this.serviceProviderTypeId,
        this.nurseStationId,
        this.departmentId,
        this.degree,
        this.speciality,
        this.description,
        this.code,
        this.assignedToAllUsers,
        this.isInHouse,
        this.isReferer,
        this.designation,
        this.hasSigningPermission,
        this.isSurgeon,
        this.joiningDate,
        this.createdDate,
        this.referrerTypeId,
        this.contact,
        this.department,
        this.referrerType,
        this.items,
        this.patientAdmissions,
        this.nurseStationInchargeList,
        this.serviceProviderType,
        this.departmentName,
        this.referralFee,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ServiceProvider.fromJson(Map<String, dynamic> json) {
    contactId = json['ContactId'];
    title = json['Title'];
    serviceProviderTypeId = json['ServiceProviderTypeId'];
    nurseStationId = json['NurseStationId'];
    departmentId = json['DepartmentId'];
    degree = json['Degree'];
    speciality = json['Speciality'];
    description = json['Description'];
    code = json['Code'];
    assignedToAllUsers = json['AssignedToAllUsers'];
    isInHouse = json['IsInHouse'];
    isReferer = json['IsReferer'];
    designation = json['Designation'];
    hasSigningPermission = json['HasSigningPermission'];
    isSurgeon = json['IsSurgeon'];
    joiningDate = json['JoiningDate'];
    createdDate = json['CreatedDate'];
    referrerTypeId = json['ReferrerTypeId'];
    contact =
    json['Contact'] != null ? new Contact.fromJson(json['Contact']) : null;
    department = json['Department'] != null
        ? new Department.fromJson(json['Department'])
        : null;
    referrerType = json['ReferrerType'] != null
        ? new ReferrerType.fromJson(json['ReferrerType'])
        : null;
    if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientAdmissions'] != null) {
      patientAdmissions = <Null>[];
      json['PatientAdmissions'].forEach((v) {
        patientAdmissions!.add(new Null.fromJson(v));
      });
    }
    if (json['NurseStationInchargeList'] != null) {
      nurseStationInchargeList = <Null>[];
      json['NurseStationInchargeList'].forEach((v) {
        nurseStationInchargeList!.add(new Null.fromJson(v));
      });
    }
    serviceProviderType = json['ServiceProviderType'] != null
        ? new ServiceProviderType.fromJson(json['ServiceProviderType'])
        : null;
    departmentName = json['DepartmentName'];
    referralFee = json['ReferralFee'];
    branchId = json['BranchId'];
    branch =
    json['Branch'] != null ? new Branch.fromJson(json['Branch']) : null;
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
    data['ContactId'] = this.contactId;
    data['Title'] = this.title;
    data['ServiceProviderTypeId'] = this.serviceProviderTypeId;
    data['NurseStationId'] = this.nurseStationId;
    data['DepartmentId'] = this.departmentId;
    data['Degree'] = this.degree;
    data['Speciality'] = this.speciality;
    data['Description'] = this.description;
    data['Code'] = this.code;
    data['AssignedToAllUsers'] = this.assignedToAllUsers;
    data['IsInHouse'] = this.isInHouse;
    data['IsReferer'] = this.isReferer;
    data['Designation'] = this.designation;
    data['HasSigningPermission'] = this.hasSigningPermission;
    data['IsSurgeon'] = this.isSurgeon;
    data['JoiningDate'] = this.joiningDate;
    data['CreatedDate'] = this.createdDate;
    data['ReferrerTypeId'] = this.referrerTypeId;
    if (this.contact != null) {
      data['Contact'] = this.contact!.toJson();
    }
    if (this.department != null) {
      data['Department'] = this.department!.toJson();
    }
    if (this.referrerType != null) {
      data['ReferrerType'] = this.referrerType!.toJson();
    }
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.patientAdmissions != null) {
      data['PatientAdmissions'] =
          this.patientAdmissions!.map((v) => v.toJson()).toList();
    }
    if (this.nurseStationInchargeList != null) {
      data['NurseStationInchargeList'] =
          this.nurseStationInchargeList!.map((v) => v.toJson()).toList();
    }
    if (this.serviceProviderType != null) {
      data['ServiceProviderType'] = this.serviceProviderType!.toJson();
    }
    data['DepartmentName'] = this.departmentName;
    data['ReferralFee'] = this.referralFee;
    data['BranchId'] = this.branchId;
    if (this.branch != null) {
      data['Branch'] = this.branch!.toJson();
    }
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

class Contact {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? genderId;
  String? street;
  String? city;
  String? zip;
  String? country;
  String? email;
  String? fax;
  String? webSite;
  String? photo;
  Null? isCompany;
  List<Null>? serviceProviders;
  int? serviceProviderType;
  Gender? gender;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Contact(
      {this.firstName,
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
        this.isCompany,
        this.serviceProviders,
        this.serviceProviderType,
        this.gender,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Contact.fromJson(Map<String, dynamic> json) {
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
    if (json['ServiceProviders'] != null) {
      serviceProviders = <Null>[];
      json['ServiceProviders'].forEach((v) {
        serviceProviders!.add(new Null.fromJson(v));
      });
    }
    serviceProviderType = json['ServiceProviderType'];
    gender =
    json['Gender'] != null ? new Gender.fromJson(json['Gender']) : null;
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
    if (this.serviceProviders != null) {
      data['ServiceProviders'] =
          this.serviceProviders!.map((v) => v.toJson()).toList();
    }
    data['ServiceProviderType'] = this.serviceProviderType;
    if (this.gender != null) {
      data['Gender'] = this.gender!.toJson();
    }
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

class Department {
  String? name;
  Null? labCategoryId;
  bool? isCMH;
  List<Null>? serviceProviders;
  int? tenantId;
  Tenant? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Department(
      {this.name,
        this.labCategoryId,
        this.isCMH,
        this.serviceProviders,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Department.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    labCategoryId = json['LabCategoryId'];
    isCMH = json['IsCMH'];
    if (json['ServiceProviders'] != null) {
      serviceProviders = <Null>[];
      json['ServiceProviders'].forEach((v) {
        serviceProviders!.add(new Null.fromJson(v));
      });
    }
    tenantId = json['TenantId'];
    tenant =
    json['Tenant'] != null ? new Tenant.fromJson(json['Tenant']) : null;
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
    data['LabCategoryId'] = this.labCategoryId;
    data['IsCMH'] = this.isCMH;
    if (this.serviceProviders != null) {
      data['ServiceProviders'] =
          this.serviceProviders!.map((v) => v.toJson()).toList();
    }
    data['TenantId'] = this.tenantId;
    if (this.tenant != null) {
      data['Tenant'] = this.tenant!.toJson();
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

class Tenant {
  String? name;
  String? url;
  Null? branchName;
  Null? branchList;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Tenant(
      {this.name,
        this.url,
        this.branchName,
        this.branchList,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Tenant.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    url = json['Url'];
    branchName = json['BranchName'];
    branchList = json['BranchList'];
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
    data['Url'] = this.url;
    data['BranchName'] = this.branchName;
    data['BranchList'] = this.branchList;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class ReferrerType {
  String? name;
  int? tenantId;
  Null? tenant;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  ReferrerType(
      {this.name,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ReferrerType.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
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

class ServiceProviderType {
  String? name;
  List<Null>? serviceProviders;
  Null? languageCode;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  ServiceProviderType(
      {this.name,
        this.serviceProviders,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ServiceProviderType.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    if (json['ServiceProviders'] != null) {
      serviceProviders = <Null>[];
      json['ServiceProviders'].forEach((v) {
        serviceProviders!.add(new Null.fromJson(v));
      });
    }
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
    if (this.serviceProviders != null) {
      data['ServiceProviders'] =
          this.serviceProviders!.map((v) => v.toJson()).toList();
    }
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

class Branch {
  String? name;
  bool? isMainBranch;
  int? tenantId;
  Tenant? tenant;
  int? id;
  bool? active;
  int? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  Branch(
      {this.name,
        this.isMainBranch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Branch.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    isMainBranch = json['IsMainBranch'];
    tenantId = json['TenantId'];
    tenant =
    json['Tenant'] != null ? new Tenant.fromJson(json['Tenant']) : null;
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
    data['IsMainBranch'] = this.isMainBranch;
    data['TenantId'] = this.tenantId;
    if (this.tenant != null) {
      data['Tenant'] = this.tenant!.toJson();
    }
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}*/
