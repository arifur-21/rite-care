/*
import 'dart:convert';
/// OldId : null
/// FirstName : "Rizwan"
/// LastName : ""
/// PhoneNumber : "0174569874"
/// GenderId : 1
/// BloodGroup : "O (+ve)"
/// BloodGroupId : 5
/// FatherName : ""
/// DOB : "/Date(859399200000)/"
/// NationalId : ""
/// Occupation : ""
/// Street : ""
/// City : ""
/// Zip : ""
/// Country : "BD"
/// Email : ""
/// Photo : "null"
/// EmergencyNumber : ""
/// EmergencyContactName : ""
/// EmergencyContactRelation : ""
/// CreatedDate : "/Date(1679901252000)/"
/// ServiceId : "987654"
/// RelationshipId : 1
/// RankId : 179
/// TradeId : null
/// ServiceTypeId : 0
/// RankTypeId : "null"
/// UnitName : "71 Bde"
/// RankName : "Capt"
/// TradeName : "null"
/// UnitId : 69
/// IsRetired : false
/// PatientPrefixId : 101
/// PatientStatusId : null
/// Sex : "null"
/// OldDob : "null"
/// Gender : {"Name":"Male","Code":101,"TypeName":"Male","User":null,"BloodDonors":[],"Id":1,"Active":true,"UserId":2,"HasErrors":false,"ErrorCount":0,"NoErrors":true}
/// PatientPrefix : {"Name":"Officers","Prefix":"O         ","LanguageCode":"EN","Id":101,"Active":true,"UserId":null,"HasErrors":false,"ErrorCount":0,"NoErrors":true}
/// PatientStatus : null
/// Memberships : []
/// PatientInvoices : []
/// PatientServices : []
/// Payments : []
/// DoctorAppointments : []
/// Relationship : {"Name":"Self","LanguageCode":null,"Id":1,"Active":true,"UserId":null,"HasErrors":false,"ErrorCount":0,"NoErrors":true}
/// Rank : {"Name":"Capt","LanguageCode":null,"Id":179,"Active":true,"UserId":null,"HasErrors":false,"ErrorCount":0,"NoErrors":true}
/// Unit : {"Name":"71 Bde","LanguageCode":null,"Id":69,"Active":true,"UserId":null,"HasErrors":false,"ErrorCount":0,"NoErrors":true}
/// Trade : null
/// ParentPatient : null
/// VisitNo : null
/// PatientInvoiceShadowId : 0
/// TenantId : 25
/// Tenant : null
/// Id : 775898
/// Active : true
/// UserId : null
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));
String searchModelToJson(SearchModel data) => json.encode(data.toJson());
class SearchModel {
  SearchModel({
      dynamic oldId, 
      String? firstName, 
      String? lastName, 
      String? phoneNumber, 
      num? genderId, 
      String? bloodGroup, 
      num? bloodGroupId, 
      String? fatherName, 
      String? dob, 
      String? nationalId, 
      String? occupation, 
      String? street, 
      String? city, 
      String? zip, 
      String? country, 
      String? email, 
      String? photo, 
      String? emergencyNumber, 
      String? emergencyContactName, 
      String? emergencyContactRelation, 
      String? createdDate, 
      String? serviceId, 
      num? relationshipId, 
      num? rankId, 
      dynamic tradeId, 
      num? serviceTypeId, 
      String? rankTypeId, 
      String? unitName, 
      String? rankName, 
      String? tradeName, 
      num? unitId, 
      bool? isRetired, 
      num? patientPrefixId, 
      dynamic patientStatusId, 
      String? sex, 
      String? oldDob, 
      Gender? gender, 
      PatientPrefix? patientPrefix, 
      dynamic patientStatus, 
      List<dynamic>? memberships, 
      List<dynamic>? patientInvoices, 
      List<dynamic>? patientServices, 
      List<dynamic>? payments, 
      List<dynamic>? doctorAppointments, 
      Relationship? relationship, 
      Rank? rank, 
      Unit? unit, 
      dynamic trade, 
      dynamic parentPatient, 
      dynamic visitNo, 
      num? patientInvoiceShadowId, 
      num? tenantId, 
      dynamic tenant, 
      num? id ,
      bool? active, 
      dynamic userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _oldId = oldId;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _genderId = genderId;
    _bloodGroup = bloodGroup;
    _bloodGroupId = bloodGroupId;
    _fatherName = fatherName;
    _dob = dob;
    _nationalId = nationalId;
    _occupation = occupation;
    _street = street;
    _city = city;
    _zip = zip;
    _country = country;
    _email = email;
    _photo = photo;
    _emergencyNumber = emergencyNumber;
    _emergencyContactName = emergencyContactName;
    _emergencyContactRelation = emergencyContactRelation;
    _createdDate = createdDate;
    _serviceId = serviceId;
    _relationshipId = relationshipId;
    _rankId = rankId;
    _tradeId = tradeId;
    _serviceTypeId = serviceTypeId;
    _rankTypeId = rankTypeId;
    _unitName = unitName;
    _rankName = rankName;
    _tradeName = tradeName;
    _unitId = unitId;
    _isRetired = isRetired;
    _patientPrefixId = patientPrefixId;
    _patientStatusId = patientStatusId;
    _sex = sex;
    _oldDob = oldDob;
    _gender = gender;
    _patientPrefix = patientPrefix;
    _patientStatus = patientStatus;
    _memberships = memberships;
    _patientInvoices = patientInvoices;
    _patientServices = patientServices;
    _payments = payments;
    _doctorAppointments = doctorAppointments;
    _relationship = relationship;
    _rank = rank;
    _unit = unit;
    _trade = trade;
    _parentPatient = parentPatient;
    _visitNo = visitNo;
    _patientInvoiceShadowId = patientInvoiceShadowId;
    _tenantId = tenantId;
    _tenant = tenant;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  SearchModel.fromJson(dynamic json) {
    _oldId = json['OldId'];
    _firstName = json['FirstName'];
    _lastName = json['LastName'];
    _phoneNumber = json['PhoneNumber'];
    _genderId = json['GenderId'];
    _bloodGroup = json['BloodGroup'];
    _bloodGroupId = json['BloodGroupId'];
    _fatherName = json['FatherName'];
    _dob = json['DOB'];
    _nationalId = json['NationalId'];
    _occupation = json['Occupation'];
    _street = json['Street'];
    _city = json['City'];
    _zip = json['Zip'];
    _country = json['Country'];
    _email = json['Email'];
    _photo = json['Photo'];
    _emergencyNumber = json['EmergencyNumber'];
    _emergencyContactName = json['EmergencyContactName'];
    _emergencyContactRelation = json['EmergencyContactRelation'];
    _createdDate = json['CreatedDate'];
    _serviceId = json['ServiceId'];
    _relationshipId = json['RelationshipId'];
    _rankId = json['RankId'];
    _tradeId = json['TradeId'];
    _serviceTypeId = json['ServiceTypeId'];
    _rankTypeId = json['RankTypeId'];
    _unitName = json['UnitName'];
    _rankName = json['RankName'];
    _tradeName = json['TradeName'];
    _unitId = json['UnitId'];
    _isRetired = json['IsRetired'];
    _patientPrefixId = json['PatientPrefixId'];
    _patientStatusId = json['PatientStatusId'];
    _sex = json['Sex'];
    _oldDob = json['OldDob'];
    _gender = json['Gender'] != null ? Gender.fromJson(json['Gender']) : null;
    _patientPrefix = json['PatientPrefix'] != null ? PatientPrefix.fromJson(json['PatientPrefix']) : null;
    _patientStatus = json['PatientStatus'];
    if (json['Memberships'] != null) {
      _memberships = [];
      json['Memberships'].forEach((v) {
      //  _memberships?.add(Dynamic.fromJson(v));
      });
    }
    if (json['PatientInvoices'] != null) {
      _patientInvoices = [];
      json['PatientInvoices'].forEach((v) {
       // _patientInvoices?.add(Dynamic.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      _patientServices = [];
      json['PatientServices'].forEach((v) {
       // _patientServices?.add(Dynamic.fromJson(v));
      });
    }
    if (json['Payments'] != null) {
      _payments = [];
      json['Payments'].forEach((v) {
      //  _payments?.add(Dynamic.fromJson(v));
      });
    }
    if (json['DoctorAppointments'] != null) {
      _doctorAppointments = [];
      json['DoctorAppointments'].forEach((v) {
        //_doctorAppointments?.add(Dynamic.fromJson(v));
      });
    }
    _relationship = json['Relationship'] != null ? Relationship.fromJson(json['Relationship']) : null;
    _rank = json['Rank'] != null ? Rank.fromJson(json['Rank']) : null;
    _unit = json['Unit'] != null ? Unit.fromJson(json['Unit']) : null;
    _trade = json['Trade'];
    _parentPatient = json['ParentPatient'];
    _visitNo = json['VisitNo'];
    _patientInvoiceShadowId = json['PatientInvoiceShadowId'];
    _tenantId = json['TenantId'];
    _tenant = json['Tenant'];
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  dynamic _oldId;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  num? _genderId;
  String? _bloodGroup;
  num? _bloodGroupId;
  String? _fatherName;
  String? _dob;
  String? _nationalId;
  String? _occupation;
  String? _street;
  String? _city;
  String? _zip;
  String? _country;
  String? _email;
  String? _photo;
  String? _emergencyNumber;
  String? _emergencyContactName;
  String? _emergencyContactRelation;
  String? _createdDate;
  String? _serviceId;
  num? _relationshipId;
  num? _rankId;
  dynamic _tradeId;
  num? _serviceTypeId;
  String? _rankTypeId;
  String? _unitName;
  String? _rankName;
  String? _tradeName;
  num? _unitId;
  bool? _isRetired;
  num? _patientPrefixId;
  dynamic _patientStatusId;
  String? _sex;
  String? _oldDob;
  Gender? _gender;
  PatientPrefix? _patientPrefix;
  dynamic _patientStatus;
  List<dynamic>? _memberships;
  List<dynamic>? _patientInvoices;
  List<dynamic>? _patientServices;
  List<dynamic>? _payments;
  List<dynamic>? _doctorAppointments;
  Relationship? _relationship;
  Rank? _rank;
  Unit? _unit;
  dynamic _trade;
  dynamic _parentPatient;
  dynamic _visitNo;
  num? _patientInvoiceShadowId;
  num? _tenantId;
  dynamic _tenant;
  num? _id;
  bool? _active;
  dynamic _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
SearchModel copyWith({  dynamic oldId,
  String? firstName,
  String? lastName,
  String? phoneNumber,
  num? genderId,
  String? bloodGroup,
  num? bloodGroupId,
  String? fatherName,
  String? dob,
  String? nationalId,
  String? occupation,
  String? street,
  String? city,
  String? zip,
  String? country,
  String? email,
  String? photo,
  String? emergencyNumber,
  String? emergencyContactName,
  String? emergencyContactRelation,
  String? createdDate,
  String? serviceId,
  num? relationshipId,
  num? rankId,
  dynamic tradeId,
  num? serviceTypeId,
  String? rankTypeId,
  String? unitName,
  String? rankName,
  String? tradeName,
  num? unitId,
  bool? isRetired,
  num? patientPrefixId,
  dynamic patientStatusId,
  String? sex,
  String? oldDob,
  Gender? gender,
  PatientPrefix? patientPrefix,
  dynamic patientStatus,
  List<dynamic>? memberships,
  List<dynamic>? patientInvoices,
  List<dynamic>? patientServices,
  List<dynamic>? payments,
  List<dynamic>? doctorAppointments,
  Relationship? relationship,
  Rank? rank,
  Unit? unit,
  dynamic trade,
  dynamic parentPatient,
  dynamic visitNo,
  num? patientInvoiceShadowId,
  num? tenantId,
  dynamic tenant,
  num? id,
  bool? active,
  dynamic userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => SearchModel(  oldId: oldId ?? _oldId,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  phoneNumber: phoneNumber ?? _phoneNumber,
  genderId: genderId ?? _genderId,
  bloodGroup: bloodGroup ?? _bloodGroup,
  bloodGroupId: bloodGroupId ?? _bloodGroupId,
  fatherName: fatherName ?? _fatherName,
  dob: dob ?? _dob,
  nationalId: nationalId ?? _nationalId,
  occupation: occupation ?? _occupation,
  street: street ?? _street,
  city: city ?? _city,
  zip: zip ?? _zip,
  country: country ?? _country,
  email: email ?? _email,
  photo: photo ?? _photo,
  emergencyNumber: emergencyNumber ?? _emergencyNumber,
  emergencyContactName: emergencyContactName ?? _emergencyContactName,
  emergencyContactRelation: emergencyContactRelation ?? _emergencyContactRelation,
  createdDate: createdDate ?? _createdDate,
  serviceId: serviceId ?? _serviceId,
  relationshipId: relationshipId ?? _relationshipId,
  rankId: rankId ?? _rankId,
  tradeId: tradeId ?? _tradeId,
  serviceTypeId: serviceTypeId ?? _serviceTypeId,
  rankTypeId: rankTypeId ?? _rankTypeId,
  unitName: unitName ?? _unitName,
  rankName: rankName ?? _rankName,
  tradeName: tradeName ?? _tradeName,
  unitId: unitId ?? _unitId,
  isRetired: isRetired ?? _isRetired,
  patientPrefixId: patientPrefixId ?? _patientPrefixId,
  patientStatusId: patientStatusId ?? _patientStatusId,
  sex: sex ?? _sex,
  oldDob: oldDob ?? _oldDob,
  gender: gender ?? _gender,
  patientPrefix: patientPrefix ?? _patientPrefix,
  patientStatus: patientStatus ?? _patientStatus,
  memberships: memberships ?? _memberships,
  patientInvoices: patientInvoices ?? _patientInvoices,
  patientServices: patientServices ?? _patientServices,
  payments: payments ?? _payments,
  doctorAppointments: doctorAppointments ?? _doctorAppointments,
  relationship: relationship ?? _relationship,
  rank: rank ?? _rank,
  unit: unit ?? _unit,
  trade: trade ?? _trade,
  parentPatient: parentPatient ?? _parentPatient,
  visitNo: visitNo ?? _visitNo,
  patientInvoiceShadowId: patientInvoiceShadowId ?? _patientInvoiceShadowId,
  tenantId: tenantId ?? _tenantId,
  tenant: tenant ?? _tenant,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  dynamic get oldId => _oldId;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phoneNumber => _phoneNumber;
  num? get genderId => _genderId;
  String? get bloodGroup => _bloodGroup;
  num? get bloodGroupId => _bloodGroupId;
  String? get fatherName => _fatherName;
  String? get dob => _dob;
  String? get nationalId => _nationalId;
  String? get occupation => _occupation;
  String? get street => _street;
  String? get city => _city;
  String? get zip => _zip;
  String? get country => _country;
  String? get email => _email;
  String? get photo => _photo;
  String? get emergencyNumber => _emergencyNumber;
  String? get emergencyContactName => _emergencyContactName;
  String? get emergencyContactRelation => _emergencyContactRelation;
  String? get createdDate => _createdDate;
  String? get serviceId => _serviceId;
  num? get relationshipId => _relationshipId;
  num? get rankId => _rankId;
  dynamic get tradeId => _tradeId;
  num? get serviceTypeId => _serviceTypeId;
  String? get rankTypeId => _rankTypeId;
  String? get unitName => _unitName;
  String? get rankName => _rankName;
  String? get tradeName => _tradeName;
  num? get unitId => _unitId;
  bool? get isRetired => _isRetired;
  num? get patientPrefixId => _patientPrefixId;
  dynamic get patientStatusId => _patientStatusId;
  String? get sex => _sex;
  String? get oldDob => _oldDob;
  Gender? get gender => _gender;
  PatientPrefix? get patientPrefix => _patientPrefix;
  dynamic get patientStatus => _patientStatus;
  List<dynamic>? get memberships => _memberships;
  List<dynamic>? get patientInvoices => _patientInvoices;
  List<dynamic>? get patientServices => _patientServices;
  List<dynamic>? get payments => _payments;
  List<dynamic>? get doctorAppointments => _doctorAppointments;
  Relationship? get relationship => _relationship;
  Rank? get rank => _rank;
  Unit? get unit => _unit;
  dynamic get trade => _trade;
  dynamic get parentPatient => _parentPatient;
  dynamic get visitNo => _visitNo;
  num? get patientInvoiceShadowId => _patientInvoiceShadowId;
  num? get tenantId => _tenantId;
  dynamic get tenant => _tenant;
  num? get id => _id;
  bool? get active => _active;
  dynamic get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OldId'] = _oldId;
    map['FirstName'] = _firstName;
    map['LastName'] = _lastName;
    map['PhoneNumber'] = _phoneNumber;
    map['GenderId'] = _genderId;
    map['BloodGroup'] = _bloodGroup;
    map['BloodGroupId'] = _bloodGroupId;
    map['FatherName'] = _fatherName;
    map['DOB'] = _dob;
    map['NationalId'] = _nationalId;
    map['Occupation'] = _occupation;
    map['Street'] = _street;
    map['City'] = _city;
    map['Zip'] = _zip;
    map['Country'] = _country;
    map['Email'] = _email;
    map['Photo'] = _photo;
    map['EmergencyNumber'] = _emergencyNumber;
    map['EmergencyContactName'] = _emergencyContactName;
    map['EmergencyContactRelation'] = _emergencyContactRelation;
    map['CreatedDate'] = _createdDate;
    map['ServiceId'] = _serviceId;
    map['RelationshipId'] = _relationshipId;
    map['RankId'] = _rankId;
    map['TradeId'] = _tradeId;
    map['ServiceTypeId'] = _serviceTypeId;
    map['RankTypeId'] = _rankTypeId;
    map['UnitName'] = _unitName;
    map['RankName'] = _rankName;
    map['TradeName'] = _tradeName;
    map['UnitId'] = _unitId;
    map['IsRetired'] = _isRetired;
    map['PatientPrefixId'] = _patientPrefixId;
    map['PatientStatusId'] = _patientStatusId;
    map['Sex'] = _sex;
    map['OldDob'] = _oldDob;
    if (_gender != null) {
      map['Gender'] = _gender?.toJson();
    }
    if (_patientPrefix != null) {
      map['PatientPrefix'] = _patientPrefix?.toJson();
    }
    map['PatientStatus'] = _patientStatus;
    if (_memberships != null) {
      map['Memberships'] = _memberships?.map((v) => v.toJson()).toList();
    }
    if (_patientInvoices != null) {
      map['PatientInvoices'] = _patientInvoices?.map((v) => v.toJson()).toList();
    }
    if (_patientServices != null) {
      map['PatientServices'] = _patientServices?.map((v) => v.toJson()).toList();
    }
    if (_payments != null) {
      map['Payments'] = _payments?.map((v) => v.toJson()).toList();
    }
    if (_doctorAppointments != null) {
      map['DoctorAppointments'] = _doctorAppointments?.map((v) => v.toJson()).toList();
    }
    if (_relationship != null) {
      map['Relationship'] = _relationship?.toJson();
    }
    if (_rank != null) {
      map['Rank'] = _rank?.toJson();
    }
    if (_unit != null) {
      map['Unit'] = _unit?.toJson();
    }
    map['Trade'] = _trade;
    map['ParentPatient'] = _parentPatient;
    map['VisitNo'] = _visitNo;
    map['PatientInvoiceShadowId'] = _patientInvoiceShadowId;
    map['TenantId'] = _tenantId;
    map['Tenant'] = _tenant;
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}

/// Name : "71 Bde"
/// LanguageCode : null
/// Id : 69
/// Active : true
/// UserId : null
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

Unit unitFromJson(String str) => Unit.fromJson(json.decode(str));
String unitToJson(Unit data) => json.encode(data.toJson());
class Unit {
  Unit({
      String? name, 
      dynamic languageCode, 
      num? id, 
      bool? active, 
      dynamic userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _name = name;
    _languageCode = languageCode;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  Unit.fromJson(dynamic json) {
    _name = json['Name'];
    _languageCode = json['LanguageCode'];
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  String? _name;
  dynamic _languageCode;
  num? _id;
  bool? _active;
  dynamic _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
Unit copyWith({  String? name,
  dynamic languageCode,
  num? id,
  bool? active,
  dynamic userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => Unit(  name: name ?? _name,
  languageCode: languageCode ?? _languageCode,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  String? get name => _name;
  dynamic get languageCode => _languageCode;
  num? get id => _id;
  bool? get active => _active;
  dynamic get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['LanguageCode'] = _languageCode;
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}

/// Name : "Capt"
/// LanguageCode : null
/// Id : 179
/// Active : true
/// UserId : null
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

Rank rankFromJson(String str) => Rank.fromJson(json.decode(str));
String rankToJson(Rank data) => json.encode(data.toJson());
class Rank {
  Rank({
      String? name, 
      dynamic languageCode, 
      num? id, 
      bool? active, 
      dynamic userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _name = name;
    _languageCode = languageCode;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  Rank.fromJson(dynamic json) {
    _name = json['Name'];
    _languageCode = json['LanguageCode'];
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  String? _name;
  dynamic _languageCode;
  num? _id;
  bool? _active;
  dynamic _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
Rank copyWith({  String? name,
  dynamic languageCode,
  num? id,
  bool? active,
  dynamic userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => Rank(  name: name ?? _name,
  languageCode: languageCode ?? _languageCode,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  String? get name => _name;
  dynamic get languageCode => _languageCode;
  num? get id => _id;
  bool? get active => _active;
  dynamic get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['LanguageCode'] = _languageCode;
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}

/// Name : "Self"
/// LanguageCode : null
/// Id : 1
/// Active : true
/// UserId : null
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

Relationship relationshipFromJson(String str) => Relationship.fromJson(json.decode(str));
String relationshipToJson(Relationship data) => json.encode(data.toJson());
class Relationship {
  Relationship({
      String? name, 
      dynamic languageCode, 
      num? id, 
      bool? active, 
      dynamic userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _name = name;
    _languageCode = languageCode;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  Relationship.fromJson(dynamic json) {
    _name = json['Name'];
    _languageCode = json['LanguageCode'];
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  String? _name;
  dynamic _languageCode;
  num? _id;
  bool? _active;
  dynamic _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
Relationship copyWith({  String? name,
  dynamic languageCode,
  num? id,
  bool? active,
  dynamic userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => Relationship(  name: name ?? _name,
  languageCode: languageCode ?? _languageCode,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  String? get name => _name;
  dynamic get languageCode => _languageCode;
  num? get id => _id;
  bool? get active => _active;
  dynamic get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['LanguageCode'] = _languageCode;
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}

/// Name : "Officers"
/// Prefix : "O         "
/// LanguageCode : "EN"
/// Id : 101
/// Active : true
/// UserId : null
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

PatientPrefix patientPrefixFromJson(String str) => PatientPrefix.fromJson(json.decode(str));
String patientPrefixToJson(PatientPrefix data) => json.encode(data.toJson());
class PatientPrefix {
  PatientPrefix({
      String? name, 
      String? prefix, 
      String? languageCode, 
      num? id, 
      bool? active, 
      dynamic userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _name = name;
    _prefix = prefix;
    _languageCode = languageCode;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  PatientPrefix.fromJson(dynamic json) {
    _name = json['Name'];
    _prefix = json['Prefix'];
    _languageCode = json['LanguageCode'];
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  String? _name;
  String? _prefix;
  String? _languageCode;
  num? _id;
  bool? _active;
  dynamic _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
PatientPrefix copyWith({  String? name,
  String? prefix,
  String? languageCode,
  num? id,
  bool? active,
  dynamic userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => PatientPrefix(  name: name ?? _name,
  prefix: prefix ?? _prefix,
  languageCode: languageCode ?? _languageCode,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  String? get name => _name;
  String? get prefix => _prefix;
  String? get languageCode => _languageCode;
  num? get id => _id;
  bool? get active => _active;
  dynamic get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['Prefix'] = _prefix;
    map['LanguageCode'] = _languageCode;
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}

/// Name : "Male"
/// Code : 101
/// TypeName : "Male"
/// User : null
/// BloodDonors : []
/// Id : 1
/// Active : true
/// UserId : 2
/// HasErrors : false
/// ErrorCount : 0
/// NoErrors : true

Gender genderFromJson(String str) => Gender.fromJson(json.decode(str));
String genderToJson(Gender data) => json.encode(data.toJson());
class Gender {
  Gender({
      String? name, 
      num? code, 
      String? typeName, 
      dynamic user, 
      List<dynamic>? bloodDonors, 
      num? id, 
      bool? active, 
      num? userId, 
      bool? hasErrors, 
      num? errorCount, 
      bool? noErrors,}){
    _name = name;
    _code = code;
    _typeName = typeName;
    _user = user;
    _bloodDonors = bloodDonors;
    _id = id;
    _active = active;
    _userId = userId;
    _hasErrors = hasErrors;
    _errorCount = errorCount;
    _noErrors = noErrors;
}

  Gender.fromJson(dynamic json) {
    _name = json['Name'];
    _code = json['Code'];
    _typeName = json['TypeName'];
    _user = json['User'];
    if (json['BloodDonors'] != null) {
      _bloodDonors = [];
      json['BloodDonors'].forEach((v) {
       // _bloodDonors?.add(Dynamic.fromJson(v));
      });
    }
    _id = json['Id'];
    _active = json['Active'];
    _userId = json['UserId'];
    _hasErrors = json['HasErrors'];
    _errorCount = json['ErrorCount'];
    _noErrors = json['NoErrors'];
  }
  String? _name;
  num? _code;
  String? _typeName;
  dynamic _user;
  List<dynamic>? _bloodDonors;
  num? _id;
  bool? _active;
  num? _userId;
  bool? _hasErrors;
  num? _errorCount;
  bool? _noErrors;
Gender copyWith({  String? name,
  num? code,
  String? typeName,
  dynamic user,
  List<dynamic>? bloodDonors,
  num? id,
  bool? active,
  num? userId,
  bool? hasErrors,
  num? errorCount,
  bool? noErrors,
}) => Gender(  name: name ?? _name,
  code: code ?? _code,
  typeName: typeName ?? _typeName,
  user: user ?? _user,
  bloodDonors: bloodDonors ?? _bloodDonors,
  id: id ?? _id,
  active: active ?? _active,
  userId: userId ?? _userId,
  hasErrors: hasErrors ?? _hasErrors,
  errorCount: errorCount ?? _errorCount,
  noErrors: noErrors ?? _noErrors,
);
  String? get name => _name;
  num? get code => _code;
  String? get typeName => _typeName;
  dynamic get user => _user;
  List<dynamic>? get bloodDonors => _bloodDonors;
  num? get id => _id;
  bool? get active => _active;
  num? get userId => _userId;
  bool? get hasErrors => _hasErrors;
  num? get errorCount => _errorCount;
  bool? get noErrors => _noErrors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['Code'] = _code;
    map['TypeName'] = _typeName;
    map['User'] = _user;
    if (_bloodDonors != null) {
      map['BloodDonors'] = _bloodDonors?.map((v) => v.toJson()).toList();
    }
    map['Id'] = _id;
    map['Active'] = _active;
    map['UserId'] = _userId;
    map['HasErrors'] = _hasErrors;
    map['ErrorCount'] = _errorCount;
    map['NoErrors'] = _noErrors;
    return map;
  }

}*/

import 'dart:convert';

class SearchModel {
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
  dynamic? gender;
  PatientPrefix? patientPrefix;
  dynamic? patientStatus;
  List<dynamic>? memberships;
  List<dynamic>? patientInvoices;
  List<dynamic>? patientServices;
  List<dynamic>? payments;
  List<dynamic>? doctorAppointments;
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



  SearchModel(
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

  SearchModel.fromJson(Map<dynamic, dynamic> json) {
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
       // patientInvoices!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      patientServices = <Null>[];
      json['PatientServices'].forEach((v) {
      //  patientServices!.add(new Null.fromJson(v));
      });
    }
    if (json['Payments'] != null) {
      payments = <Null>[];
      json['Payments'].forEach((v) {
      //  payments!.add(new Null.fromJson(v));
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
      //data['Memberships'] = this.memberships!.map((v) => v.toJson()).toList();
    }
    if (this.patientInvoices != null) {
    //  data['PatientInvoices'] = this.patientInvoices!.map((v) => v.toJson()).toList();
    }
    if (this.patientServices != null) {
    //  data['PatientServices'] = this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.payments != null) {
   //   data['Payments'] = this.payments!.map((v) => v.toJson()).toList();
    }
    if (this.doctorAppointments != null) {
     // data['DoctorAppointments'] = this.doctorAppointments!.map((v) => v.toJson()).toList();
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
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
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
   /* if (this.bloodDonors != null) {data['BloodDonors'] = this.bloodDonors!.map((v) => v.toJson()).toList();
    }*/
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
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

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
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
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
