// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
      contactId: json['ContactId'],
      title: json['Title'] as String?,
      serviceProviderTypeId: json['ServiceProviderTypeId'],
      nurseStationId: json['NurseStationId'],
      departmentId: json['DepartmentId'],
      degree: json['Degree'] as String?,
      speciality: json['Speciality'] as String?,
      description: json['Description'] as String?,
      code: json['Code'] as String?,
      assignedToAllUsers: json['AssignedToAllUsers'] as bool?,
      isInHouse: json['IsInHouse'] as bool?,
      isReferer: json['IsReferer'] as bool?,
      designation: json['Designation'] as String?,
      hasSigningPermission: json['HasSigningPermission'] as bool?,
      isSurgeon: json['IsSurgeon'] as bool?,
      joiningDate: json['JoiningDate'],
      createdDate: json['CreatedDate'] as String?,
      referrerTypeId: json['ReferrerTypeId'],
      contact: json['Contact'] == null
          ? null
          : Contact.fromJson(json['Contact'] as Map<String, dynamic>),
      department: json['Department'] == null
          ? null
          : Department.fromJson(json['Department'] as Map<String, dynamic>),
      referrerType: json['ReferrerType'] == null
          ? null
          : ReferrerType.fromJson(json['ReferrerType'] as Map<String, dynamic>),
      items: json['Items'] as List<dynamic>?,
      patientAdmissions: json['PatientAdmissions'] as List<dynamic>?,
      nurseStationInchargeList:
          json['NurseStationInchargeList'] as List<dynamic>?,
      serviceProviderType: json['ServiceProviderType'] == null
          ? null
          : ServiceProviderType.fromJson(
              json['ServiceProviderType'] as Map<String, dynamic>),
      departmentName: json['DepartmentName'],
      referralFee: json['ReferralFee'],
      branchId: json['BranchId'],
      branch: json['Branch'] == null
          ? null
          : Branch.fromJson(json['Branch'] as Map<String, dynamic>),
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      'ContactId': instance.contactId,
      'Title': instance.title,
      'ServiceProviderTypeId': instance.serviceProviderTypeId,
      'NurseStationId': instance.nurseStationId,
      'DepartmentId': instance.departmentId,
      'Degree': instance.degree,
      'Speciality': instance.speciality,
      'Description': instance.description,
      'Code': instance.code,
      'AssignedToAllUsers': instance.assignedToAllUsers,
      'IsInHouse': instance.isInHouse,
      'IsReferer': instance.isReferer,
      'Designation': instance.designation,
      'HasSigningPermission': instance.hasSigningPermission,
      'IsSurgeon': instance.isSurgeon,
      'JoiningDate': instance.joiningDate,
      'CreatedDate': instance.createdDate,
      'ReferrerTypeId': instance.referrerTypeId,
      'Contact': instance.contact,
      'Department': instance.department,
      'ReferrerType': instance.referrerType,
      'Items': instance.items,
      'PatientAdmissions': instance.patientAdmissions,
      'NurseStationInchargeList': instance.nurseStationInchargeList,
      'ServiceProviderType': instance.serviceProviderType,
      'DepartmentName': instance.departmentName,
      'ReferralFee': instance.referralFee,
      'BranchId': instance.branchId,
      'Branch': instance.branch,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
