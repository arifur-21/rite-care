import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'gender.dart';
import 'patient_prefix.dart';
import 'relationship.dart';

class ParentPatient extends Equatable {
  final dynamic oldId;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final int? genderId;
  final String? bloodGroup;
  final int? bloodGroupId;
  final String? fatherName;
  final String? dob;
  final String? nationalId;
  final String? occupation;
  final String? street;
  final String? city;
  final String? zip;
  final String? country;
  final String? email;
  final String? photo;
  final String? emergencyNumber;
  final String? emergencyContactName;
  final String? emergencyContactRelation;
  final String? createdDate;
  final String? serviceId;
  final int? relationshipId;
  final int? rankId;
  final dynamic tradeId;
  final int? serviceTypeId;
  final String? rankTypeId;
  final String? unitName;
  final String? rankName;
  final String? tradeName;
  final int? unitId;
  final bool? isRetired;
  final int? patientPrefixId;
  final dynamic patientStatusId;
  final String? sex;
  final String? oldDob;
  final Gender? gender;
  final PatientPrefix? patientPrefix;
  final dynamic patientStatus;
  final List<dynamic>? memberships;
  final List<dynamic>? patientInvoices;
  final List<dynamic>? patientServices;
  final List<dynamic>? payments;
  final List<dynamic>? doctorAppointments;
  final Relationship? relationship;
  final dynamic rank;
  final dynamic unit;
  final dynamic trade;
  final dynamic parentPatient;
  final dynamic visitNo;
  final int? patientInvoiceShadowId;
  final int? tenantId;
  final dynamic tenant;
  final int? id;
  final bool? active;
  final dynamic userId;
  final bool? hasErrors;
  final int? errorCount;
  final bool? noErrors;

  const ParentPatient({
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
    this.noErrors,
  });

  factory ParentPatient.fromMap(Map<String, dynamic> data) => ParentPatient(
        oldId: data['OldId'] as dynamic,
        firstName: data['FirstName'] as String?,
        lastName: data['LastName'] as String?,
        phoneNumber: data['PhoneNumber'] as String?,
        genderId: data['GenderId'] as int?,
        bloodGroup: data['BloodGroup'] as String?,
        bloodGroupId: data['BloodGroupId'] as int?,
        fatherName: data['FatherName'] as String?,
        dob: data['DOB'] as String?,
        nationalId: data['NationalId'] as String?,
        occupation: data['Occupation'] as String?,
        street: data['Street'] as String?,
        city: data['City'] as String?,
        zip: data['Zip'] as String?,
        country: data['Country'] as String?,
        email: data['Email'] as String?,
        photo: data['Photo'] as String?,
        emergencyNumber: data['EmergencyNumber'] as String?,
        emergencyContactName: data['EmergencyContactName'] as String?,
        emergencyContactRelation: data['EmergencyContactRelation'] as String?,
        createdDate: data['CreatedDate'] as String?,
        serviceId: data['ServiceId'] as String?,
        relationshipId: data['RelationshipId'] as int?,
        rankId: data['RankId'] as int?,
        tradeId: data['TradeId'] as dynamic,
        serviceTypeId: data['ServiceTypeId'] as int?,
        rankTypeId: data['RankTypeId'] as String?,
        unitName: data['UnitName'] as String?,
        rankName: data['RankName'] as String?,
        tradeName: data['TradeName'] as String?,
        unitId: data['UnitId'] as int?,
        isRetired: data['IsRetired'] as bool?,
        patientPrefixId: data['PatientPrefixId'] as int?,
        patientStatusId: data['PatientStatusId'] as dynamic,
        sex: data['Sex'] as String?,
        oldDob: data['OldDob'] as String?,
        gender: data['Gender'] == null
            ? null
            : Gender.fromMap(data['Gender'] as Map<String, dynamic>),
        patientPrefix: data['PatientPrefix'] == null
            ? null
            : PatientPrefix.fromMap(
                data['PatientPrefix'] as Map<String, dynamic>),
        patientStatus: data['PatientStatus'] as dynamic,
        memberships: data['Memberships'] as List<dynamic>?,
        patientInvoices: data['PatientInvoices'] as List<dynamic>?,
        patientServices: data['PatientServices'] as List<dynamic>?,
        payments: data['Payments'] as List<dynamic>?,
        doctorAppointments: data['DoctorAppointments'] as List<dynamic>?,
        relationship: data['Relationship'] == null
            ? null
            : Relationship.fromMap(
                data['Relationship'] as Map<String, dynamic>),
        rank: data['Rank'] as dynamic,
        unit: data['Unit'] as dynamic,
        trade: data['Trade'] as dynamic,
        parentPatient: data['ParentPatient'] as dynamic,
        visitNo: data['VisitNo'] as dynamic,
        patientInvoiceShadowId: data['PatientInvoiceShadowId'] as int?,
        tenantId: data['TenantId'] as int?,
        tenant: data['Tenant'] as dynamic,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as dynamic,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'OldId': oldId,
        'FirstName': firstName,
        'LastName': lastName,
        'PhoneNumber': phoneNumber,
        'GenderId': genderId,
        'BloodGroup': bloodGroup,
        'BloodGroupId': bloodGroupId,
        'FatherName': fatherName,
        'DOB': dob,
        'NationalId': nationalId,
        'Occupation': occupation,
        'Street': street,
        'City': city,
        'Zip': zip,
        'Country': country,
        'Email': email,
        'Photo': photo,
        'EmergencyNumber': emergencyNumber,
        'EmergencyContactName': emergencyContactName,
        'EmergencyContactRelation': emergencyContactRelation,
        'CreatedDate': createdDate,
        'ServiceId': serviceId,
        'RelationshipId': relationshipId,
        'RankId': rankId,
        'TradeId': tradeId,
        'ServiceTypeId': serviceTypeId,
        'RankTypeId': rankTypeId,
        'UnitName': unitName,
        'RankName': rankName,
        'TradeName': tradeName,
        'UnitId': unitId,
        'IsRetired': isRetired,
        'PatientPrefixId': patientPrefixId,
        'PatientStatusId': patientStatusId,
        'Sex': sex,
        'OldDob': oldDob,
        'Gender': gender?.toMap(),
        'PatientPrefix': patientPrefix?.toMap(),
        'PatientStatus': patientStatus,
        'Memberships': memberships,
        'PatientInvoices': patientInvoices,
        'PatientServices': patientServices,
        'Payments': payments,
        'DoctorAppointments': doctorAppointments,
        'Relationship': relationship?.toMap(),
        'Rank': rank,
        'Unit': unit,
        'Trade': trade,
        'ParentPatient': parentPatient,
        'VisitNo': visitNo,
        'PatientInvoiceShadowId': patientInvoiceShadowId,
        'TenantId': tenantId,
        'Tenant': tenant,
        'Id': id,
        'Active': active,
        'UserId': userId,
        'HasErrors': hasErrors,
        'ErrorCount': errorCount,
        'NoErrors': noErrors,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ParentPatient].
  factory ParentPatient.fromJson(String data) {
    return ParentPatient.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ParentPatient] to a JSON string.
  String toJson() => json.encode(toMap());

  ParentPatient copyWith({
    dynamic oldId,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    int? genderId,
    String? bloodGroup,
    int? bloodGroupId,
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
    int? relationshipId,
    int? rankId,
    dynamic tradeId,
    int? serviceTypeId,
    String? rankTypeId,
    String? unitName,
    String? rankName,
    String? tradeName,
    int? unitId,
    bool? isRetired,
    int? patientPrefixId,
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
    dynamic rank,
    dynamic unit,
    dynamic trade,
    dynamic parentPatient,
    dynamic visitNo,
    int? patientInvoiceShadowId,
    int? tenantId,
    dynamic tenant,
    int? id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    int? errorCount,
    bool? noErrors,
  }) {
    return ParentPatient(
      oldId: oldId ?? this.oldId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      genderId: genderId ?? this.genderId,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      bloodGroupId: bloodGroupId ?? this.bloodGroupId,
      fatherName: fatherName ?? this.fatherName,
      dob: dob ?? this.dob,
      nationalId: nationalId ?? this.nationalId,
      occupation: occupation ?? this.occupation,
      street: street ?? this.street,
      city: city ?? this.city,
      zip: zip ?? this.zip,
      country: country ?? this.country,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      emergencyNumber: emergencyNumber ?? this.emergencyNumber,
      emergencyContactName: emergencyContactName ?? this.emergencyContactName,
      emergencyContactRelation:
          emergencyContactRelation ?? this.emergencyContactRelation,
      createdDate: createdDate ?? this.createdDate,
      serviceId: serviceId ?? this.serviceId,
      relationshipId: relationshipId ?? this.relationshipId,
      rankId: rankId ?? this.rankId,
      tradeId: tradeId ?? this.tradeId,
      serviceTypeId: serviceTypeId ?? this.serviceTypeId,
      rankTypeId: rankTypeId ?? this.rankTypeId,
      unitName: unitName ?? this.unitName,
      rankName: rankName ?? this.rankName,
      tradeName: tradeName ?? this.tradeName,
      unitId: unitId ?? this.unitId,
      isRetired: isRetired ?? this.isRetired,
      patientPrefixId: patientPrefixId ?? this.patientPrefixId,
      patientStatusId: patientStatusId ?? this.patientStatusId,
      sex: sex ?? this.sex,
      oldDob: oldDob ?? this.oldDob,
      gender: gender ?? this.gender,
      patientPrefix: patientPrefix ?? this.patientPrefix,
      patientStatus: patientStatus ?? this.patientStatus,
      memberships: memberships ?? this.memberships,
      patientInvoices: patientInvoices ?? this.patientInvoices,
      patientServices: patientServices ?? this.patientServices,
      payments: payments ?? this.payments,
      doctorAppointments: doctorAppointments ?? this.doctorAppointments,
      relationship: relationship ?? this.relationship,
      rank: rank ?? this.rank,
      unit: unit ?? this.unit,
      trade: trade ?? this.trade,
      parentPatient: parentPatient ?? this.parentPatient,
      visitNo: visitNo ?? this.visitNo,
      patientInvoiceShadowId:
          patientInvoiceShadowId ?? this.patientInvoiceShadowId,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
      id: id ?? this.id,
      active: active ?? this.active,
      userId: userId ?? this.userId,
      hasErrors: hasErrors ?? this.hasErrors,
      errorCount: errorCount ?? this.errorCount,
      noErrors: noErrors ?? this.noErrors,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      oldId,
      firstName,
      lastName,
      phoneNumber,
      genderId,
      bloodGroup,
      bloodGroupId,
      fatherName,
      dob,
      nationalId,
      occupation,
      street,
      city,
      zip,
      country,
      email,
      photo,
      emergencyNumber,
      emergencyContactName,
      emergencyContactRelation,
      createdDate,
      serviceId,
      relationshipId,
      rankId,
      tradeId,
      serviceTypeId,
      rankTypeId,
      unitName,
      rankName,
      tradeName,
      unitId,
      isRetired,
      patientPrefixId,
      patientStatusId,
      sex,
      oldDob,
      gender,
      patientPrefix,
      patientStatus,
      memberships,
      patientInvoices,
      patientServices,
      payments,
      doctorAppointments,
      relationship,
      rank,
      unit,
      trade,
      parentPatient,
      visitNo,
      patientInvoiceShadowId,
      tenantId,
      tenant,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
