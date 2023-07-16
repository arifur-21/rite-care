// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      contactId: json['ContactId'],
      userName: json['UserName'] as String?,
      password: json['Password'] as String?,
      roleId: json['RoleId'],
      isConsolidateReport: json['IsConsolidateReport'] as bool?,
      isHrmUser: json['IsHrmUser'] as bool?,
      createdDate: json['CreatedDate'] as String?,
      languageCode: json['LanguageCode'],
      loginId: json['LoginId'],
      patientStatusId: json['PatientStatusId'],
      coa: json['Coa'],
      hrmAccessToken: json['HrmAccessToken'],
      hrmUrl: json['HrmUrl'],
      tenantName: json['TenantName'],
      contact: json['Contact'] == null
          ? null
          : Contact.fromJson(json['Contact'] as Map<String, dynamic>),
      role: json['Role'] == null
          ? null
          : Role.fromJson(json['Role'] as Map<String, dynamic>),
      userTypeId: json['UserTypeId'],
      isPermittedForeignMission: json['IsPermittedForeignMission'] as bool?,
      isOtApproval: json['IsOTApproval'] as bool?,
      expenses: json['Expenses'],
      patientServices: json['PatientServices'],
      userPatientStatusList: (json['UserPatientStatusList'] as List<dynamic>?)
          ?.map(
              (e) => UserPatientStatusList.fromJson(e as Map<String, dynamic>))
          .toList(),
      importTenantId: json['ImportTenantId'],
      importBranchId: json['ImportBranchId'],
      userItemCategories: (json['UserItemCategories'] as List<dynamic>?)
          ?.map((e) => UserItemCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      inActive: json['InActive'] as bool?,
      branchId: json['BranchId'],
      branch: json['Branch'],
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'ContactId': instance.contactId,
      'UserName': instance.userName,
      'Password': instance.password,
      'RoleId': instance.roleId,
      'IsConsolidateReport': instance.isConsolidateReport,
      'IsHrmUser': instance.isHrmUser,
      'CreatedDate': instance.createdDate,
      'LanguageCode': instance.languageCode,
      'LoginId': instance.loginId,
      'PatientStatusId': instance.patientStatusId,
      'Coa': instance.coa,
      'HrmAccessToken': instance.hrmAccessToken,
      'HrmUrl': instance.hrmUrl,
      'TenantName': instance.tenantName,
      'Contact': instance.contact,
      'Role': instance.role,
      'UserTypeId': instance.userTypeId,
      'IsPermittedForeignMission': instance.isPermittedForeignMission,
      'IsOTApproval': instance.isOtApproval,
      'Expenses': instance.expenses,
      'PatientServices': instance.patientServices,
      'UserPatientStatusList': instance.userPatientStatusList,
      'ImportTenantId': instance.importTenantId,
      'ImportBranchId': instance.importBranchId,
      'UserItemCategories': instance.userItemCategories,
      'InActive': instance.inActive,
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
