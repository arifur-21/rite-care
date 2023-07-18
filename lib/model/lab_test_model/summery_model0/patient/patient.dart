import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gender.dart';
import 'relationship.dart';

part 'patient.g.dart';

@JsonSerializable()
class Patient extends Equatable {
  @JsonKey(name: 'OldId')
  final dynamic oldId;
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @JsonKey(name: 'LastName')
  final String? lastName;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'GenderId')
  final dynamic genderId;
  @JsonKey(name: 'BloodGroup')
  final dynamic bloodGroup;
  @JsonKey(name: 'BloodGroupId')
  final dynamic bloodGroupId;
  @JsonKey(name: 'FatherName')
  final dynamic fatherName;
  @JsonKey(name: 'DOB')
  final String? dob;
  @JsonKey(name: 'NationalId')
  final String? nationalId;
  @JsonKey(name: 'Occupation')
  final String? occupation;
  @JsonKey(name: 'Street')
  final String? street;
  @JsonKey(name: 'City')
  final String? city;
  @JsonKey(name: 'Zip')
  final String? zip;
  @JsonKey(name: 'Country')
  final String? country;
  @JsonKey(name: 'Email')
  final String? email;
  @JsonKey(name: 'Photo')
  final dynamic photo;
  @JsonKey(name: 'EmergencyNumber')
  final String? emergencyNumber;
  @JsonKey(name: 'EmergencyContactName')
  final String? emergencyContactName;
  @JsonKey(name: 'EmergencyContactRelation')
  final String? emergencyContactRelation;
  @JsonKey(name: 'CreatedDate')
  final String? createdDate;
  @JsonKey(name: 'ServiceId')
  final String? serviceId;
  @JsonKey(name: 'RelationshipId')
  final dynamic relationshipId;
  @JsonKey(name: 'RankId')
  final dynamic rankId;
  @JsonKey(name: 'TradeId')
  final dynamic tradeId;
  @JsonKey(name: 'ServiceTypeId')
  final dynamic serviceTypeId;
  @JsonKey(name: 'RankTypeId')
  final dynamic rankTypeId;
  @JsonKey(name: 'UnitName')
  final String? unitName;
  @JsonKey(name: 'RankName')
  final String? rankName;
  @JsonKey(name: 'TradeName')
  final dynamic tradeName;
  @JsonKey(name: 'UnitId')
  final dynamic unitId;
  @JsonKey(name: 'IsRetired')
  final bool? isRetired;
  @JsonKey(name: 'PatientPrefixId')
  final dynamic patientPrefixId;
  @JsonKey(name: 'PatientStatusId')
  final dynamic patientStatusId;
  @JsonKey(name: 'Sex')
  final dynamic sex;
  @JsonKey(name: 'OldDob')
  final dynamic oldDob;
  @JsonKey(name: 'Gender')
  final Gender? gender;
  @JsonKey(name: 'PatientPrefix')
  final dynamic patientPrefix;
  @JsonKey(name: 'PatientStatus')
  final dynamic patientStatus;
  @JsonKey(name: 'Memberships')
  final List<dynamic>? memberships;
  @JsonKey(name: 'PatientInvoices')
  final List<dynamic>? patientInvoices;
  @JsonKey(name: 'PatientServices')
  final List<dynamic>? patientServices;
  @JsonKey(name: 'Payments')
  final List<dynamic>? payments;
  @JsonKey(name: 'DoctorAppointments')
  final List<dynamic>? doctorAppointments;
  @JsonKey(name: 'Relationship')
  final Relationship? relationship;
  @JsonKey(name: 'Rank')
  final dynamic rank;
  @JsonKey(name: 'Unit')
  final dynamic unit;
  @JsonKey(name: 'Trade')
  final dynamic trade;
  @JsonKey(name: 'ParentPatient')
  final dynamic parentPatient;
  @JsonKey(name: 'VisitNo')
  final dynamic visitNo;
  @JsonKey(name: 'PatientInvoiceShadowId')
  final dynamic patientInvoiceShadowId;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const Patient({
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

  factory Patient.fromJson(Map<String, dynamic> json) {
    return _$PatientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientToJson(this);

  Patient copyWith({
    dynamic oldId,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    dynamic genderId,
    dynamic bloodGroup,
    dynamic bloodGroupId,
    dynamic fatherName,
    String? dob,
    String? nationalId,
    String? occupation,
    String? street,
    String? city,
    String? zip,
    String? country,
    String? email,
    dynamic photo,
    String? emergencyNumber,
    String? emergencyContactName,
    String? emergencyContactRelation,
    String? createdDate,
    String? serviceId,
    dynamic relationshipId,
    dynamic rankId,
    dynamic tradeId,
    dynamic serviceTypeId,
    dynamic rankTypeId,
    String? unitName,
    String? rankName,
    dynamic tradeName,
    dynamic unitId,
    bool? isRetired,
    dynamic patientPrefixId,
    dynamic patientStatusId,
    dynamic sex,
    dynamic oldDob,
    Gender? gender,
    dynamic patientPrefix,
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
    dynamic patientInvoiceShadowId,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Patient(
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
