import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'branch.dart';
import 'contact.dart';
import 'department.dart';
import 'referrer_type.dart';
import 'service_provider_type.dart';

part 'doctor.g.dart';

@JsonSerializable()
class Doctor extends Equatable {
  @JsonKey(name: 'ContactId')
  final dynamic contactId;
  @JsonKey(name: 'Title')
  final String? title;
  @JsonKey(name: 'ServiceProviderTypeId')
  final dynamic serviceProviderTypeId;
  @JsonKey(name: 'NurseStationId')
  final dynamic nurseStationId;
  @JsonKey(name: 'DepartmentId')
  final dynamic departmentId;
  @JsonKey(name: 'Degree')
  final String? degree;
  @JsonKey(name: 'Speciality')
  final String? speciality;
  @JsonKey(name: 'Description')
  final String? description;
  @JsonKey(name: 'Code')
  final String? code;
  @JsonKey(name: 'AssignedToAllUsers')
  final bool? assignedToAllUsers;
  @JsonKey(name: 'IsInHouse')
  final bool? isInHouse;
  @JsonKey(name: 'IsReferer')
  final bool? isReferer;
  @JsonKey(name: 'Designation')
  final String? designation;
  @JsonKey(name: 'HasSigningPermission')
  final bool? hasSigningPermission;
  @JsonKey(name: 'IsSurgeon')
  final bool? isSurgeon;
  @JsonKey(name: 'JoiningDate')
  final dynamic joiningDate;
  @JsonKey(name: 'CreatedDate')
  final String? createdDate;
  @JsonKey(name: 'ReferrerTypeId')
  final dynamic referrerTypeId;
  @JsonKey(name: 'Contact')
  final Contact? contact;
  @JsonKey(name: 'Department')
  final Department? department;
  @JsonKey(name: 'ReferrerType')
  final ReferrerType? referrerType;
  @JsonKey(name: 'Items')
  final List<dynamic>? items;
  @JsonKey(name: 'PatientAdmissions')
  final List<dynamic>? patientAdmissions;
  @JsonKey(name: 'NurseStationInchargeList')
  final List<dynamic>? nurseStationInchargeList;
  @JsonKey(name: 'ServiceProviderType')
  final ServiceProviderType? serviceProviderType;
  @JsonKey(name: 'DepartmentName')
  final dynamic departmentName;
  @JsonKey(name: 'ReferralFee')
  final dynamic referralFee;
  @JsonKey(name: 'BranchId')
  final dynamic branchId;
  @JsonKey(name: 'Branch')
  final Branch? branch;
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

  const Doctor({
    this.contactId,
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
    this.noErrors,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return _$DoctorFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoctorToJson(this);

  Doctor copyWith({
    dynamic contactId,
    String? title,
    dynamic serviceProviderTypeId,
    dynamic nurseStationId,
    dynamic departmentId,
    String? degree,
    String? speciality,
    String? description,
    String? code,
    bool? assignedToAllUsers,
    bool? isInHouse,
    bool? isReferer,
    String? designation,
    bool? hasSigningPermission,
    bool? isSurgeon,
    dynamic joiningDate,
    String? createdDate,
    dynamic referrerTypeId,
    Contact? contact,
    Department? department,
    ReferrerType? referrerType,
    List<dynamic>? items,
    List<dynamic>? patientAdmissions,
    List<dynamic>? nurseStationInchargeList,
    ServiceProviderType? serviceProviderType,
    dynamic departmentName,
    dynamic referralFee,
    dynamic branchId,
    Branch? branch,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Doctor(
      contactId: contactId ?? this.contactId,
      title: title ?? this.title,
      serviceProviderTypeId:
          serviceProviderTypeId ?? this.serviceProviderTypeId,
      nurseStationId: nurseStationId ?? this.nurseStationId,
      departmentId: departmentId ?? this.departmentId,
      degree: degree ?? this.degree,
      speciality: speciality ?? this.speciality,
      description: description ?? this.description,
      code: code ?? this.code,
      assignedToAllUsers: assignedToAllUsers ?? this.assignedToAllUsers,
      isInHouse: isInHouse ?? this.isInHouse,
      isReferer: isReferer ?? this.isReferer,
      designation: designation ?? this.designation,
      hasSigningPermission: hasSigningPermission ?? this.hasSigningPermission,
      isSurgeon: isSurgeon ?? this.isSurgeon,
      joiningDate: joiningDate ?? this.joiningDate,
      createdDate: createdDate ?? this.createdDate,
      referrerTypeId: referrerTypeId ?? this.referrerTypeId,
      contact: contact ?? this.contact,
      department: department ?? this.department,
      referrerType: referrerType ?? this.referrerType,
      items: items ?? this.items,
      patientAdmissions: patientAdmissions ?? this.patientAdmissions,
      nurseStationInchargeList:
          nurseStationInchargeList ?? this.nurseStationInchargeList,
      serviceProviderType: serviceProviderType ?? this.serviceProviderType,
      departmentName: departmentName ?? this.departmentName,
      referralFee: referralFee ?? this.referralFee,
      branchId: branchId ?? this.branchId,
      branch: branch ?? this.branch,
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
      contactId,
      title,
      serviceProviderTypeId,
      nurseStationId,
      departmentId,
      degree,
      speciality,
      description,
      code,
      assignedToAllUsers,
      isInHouse,
      isReferer,
      designation,
      hasSigningPermission,
      isSurgeon,
      joiningDate,
      createdDate,
      referrerTypeId,
      contact,
      department,
      referrerType,
      items,
      patientAdmissions,
      nurseStationInchargeList,
      serviceProviderType,
      departmentName,
      referralFee,
      branchId,
      branch,
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
