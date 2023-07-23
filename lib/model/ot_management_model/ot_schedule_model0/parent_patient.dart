import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gender.dart';
import 'patient_prefix.dart';
import 'relationship.dart';

part 'parent_patient.g.dart';

@JsonSerializable()
class ParentPatient extends Equatable {
  @JsonKey(name: 'OldId')
  final dynamic oldId;
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @JsonKey(name: 'LastName')
  final String? lastName;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'GenderId')
  final int? genderId;
  @JsonKey(name: 'BloodGroup')
  final String? bloodGroup;
  @JsonKey(name: 'BloodGroupId')
  final int? bloodGroupId;
  @JsonKey(name: 'FatherName')
  final String? fatherName;
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
  final String? photo;
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
  final int? relationshipId;
  @JsonKey(name: 'RankId')
  final int? rankId;
  @JsonKey(name: 'TradeId')
  final dynamic tradeId;
  @JsonKey(name: 'ServiceTypeId')
  final int? serviceTypeId;
  @JsonKey(name: 'RankTypeId')
  final String? rankTypeId;
  @JsonKey(name: 'UnitName')
  final String? unitName;
  @JsonKey(name: 'RankName')
  final String? rankName;
  @JsonKey(name: 'TradeName')
  final String? tradeName;
  @JsonKey(name: 'UnitId')
  final int? unitId;
  @JsonKey(name: 'IsRetired')
  final bool? isRetired;
  @JsonKey(name: 'PatientPrefixId')
  final int? patientPrefixId;
  @JsonKey(name: 'PatientStatusId')
  final dynamic patientStatusId;
  @JsonKey(name: 'Sex')
  final String? sex;
  @JsonKey(name: 'OldDob')
  final String? oldDob;
  @JsonKey(name: 'Gender')
  final Gender? gender;
  @JsonKey(name: 'PatientPrefix')
  final PatientPrefix? patientPrefix;
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
  final int? patientInvoiceShadowId;
  @JsonKey(name: 'TenantId')
  final int? tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final int? errorCount;
  @JsonKey(name: 'NoErrors')
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

  factory ParentPatient.fromJson(Map<String, dynamic> json) {
    return _$ParentPatientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParentPatientToJson(this);

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
