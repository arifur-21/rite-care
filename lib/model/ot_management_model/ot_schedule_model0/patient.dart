import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'parent_patient.dart';
import 'relationship.dart';

part 'patient.g.dart';

@JsonSerializable()
class Patient extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
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
  final dynamic fatherName;
  @JsonKey(name: 'DOB')
  final String? dob;
  @JsonKey(name: 'NationalId')
  final String? nationalId;
  @JsonKey(name: 'Occupation')
  final dynamic occupation;
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
  @JsonKey(name: 'Relationship')
  final Relationship? relationship;
  @JsonKey(name: 'Rank')
  final dynamic rank;
  @JsonKey(name: 'Unit')
  final dynamic unit;
  @JsonKey(name: 'Trade')
  final dynamic trade;
  @JsonKey(name: 'ParentPatient')
  final ParentPatient? parentPatient;

  const Patient({
    this.id,
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
    this.relationship,
    this.rank,
    this.unit,
    this.trade,
    this.parentPatient,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return _$PatientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientToJson(this);

  Patient copyWith({
    int? id,
    dynamic oldId,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    int? genderId,
    String? bloodGroup,
    int? bloodGroupId,
    dynamic fatherName,
    String? dob,
    String? nationalId,
    dynamic occupation,
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
    Relationship? relationship,
    dynamic rank,
    dynamic unit,
    dynamic trade,
    ParentPatient? parentPatient,
  }) {
    return Patient(
      id: id ?? this.id,
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
      relationship: relationship ?? this.relationship,
      rank: rank ?? this.rank,
      unit: unit ?? this.unit,
      trade: trade ?? this.trade,
      parentPatient: parentPatient ?? this.parentPatient,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
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
      relationship,
      rank,
      unit,
      trade,
      parentPatient,
    ];
  }
}
