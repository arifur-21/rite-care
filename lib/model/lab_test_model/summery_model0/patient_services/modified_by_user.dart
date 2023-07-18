import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'contact.dart';
import 'user_item_category.dart';
import 'user_patient_status_list.dart';

part 'modified_by_user.g.dart';

@JsonSerializable()
class ModifiedByUser extends Equatable {
  @JsonKey(name: 'ContactId')
  final dynamic contactId;
  @JsonKey(name: 'UserName')
  final String? userName;
  @JsonKey(name: 'Password')
  final dynamic password;
  @JsonKey(name: 'RoleId')
  final dynamic roleId;
  @JsonKey(name: 'IsConsolidateReport')
  final bool? isConsolidateReport;
  @JsonKey(name: 'IsHrmUser')
  final bool? isHrmUser;
  @JsonKey(name: 'CreatedDate')
  final String? createdDate;
  @JsonKey(name: 'LanguageCode')
  final dynamic languageCode;
  @JsonKey(name: 'LoginId')
  final dynamic loginId;
  @JsonKey(name: 'PatientStatusId')
  final dynamic patientStatusId;
  @JsonKey(name: 'Coa')
  final dynamic coa;
  @JsonKey(name: 'HrmAccessToken')
  final dynamic hrmAccessToken;
  @JsonKey(name: 'HrmUrl')
  final dynamic hrmUrl;
  @JsonKey(name: 'TenantName')
  final dynamic tenantName;
  @JsonKey(name: 'Contact')
  final Contact? contact;
  @JsonKey(name: 'Role')
  final dynamic role;
  @JsonKey(name: 'UserTypeId')
  final dynamic userTypeId;
  @JsonKey(name: 'IsPermittedForeignMission')
  final bool? isPermittedForeignMission;
  @JsonKey(name: 'IsOTApproval')
  final bool? isOtApproval;
  @JsonKey(name: 'Expenses')
  final dynamic expenses;
  @JsonKey(name: 'PatientServices')
  final dynamic patientServices;
  @JsonKey(name: 'UserPatientStatusList')
  final List<UserPatientStatusList>? userPatientStatusList;
  @JsonKey(name: 'ImportTenantId')
  final dynamic importTenantId;
  @JsonKey(name: 'ImportBranchId')
  final dynamic importBranchId;
  @JsonKey(name: 'UserItemCategories')
  final List<UserItemCategory>? userItemCategories;
  @JsonKey(name: 'InActive')
  final bool? inActive;
  @JsonKey(name: 'BranchId')
  final dynamic branchId;
  @JsonKey(name: 'Branch')
  final dynamic branch;
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

  const ModifiedByUser({
    this.contactId,
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
    this.isOtApproval,
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
    this.noErrors,
  });

  factory ModifiedByUser.fromJson(Map<String, dynamic> json) {
    return _$ModifiedByUserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModifiedByUserToJson(this);

  ModifiedByUser copyWith({
    dynamic contactId,
    String? userName,
    dynamic password,
    dynamic roleId,
    bool? isConsolidateReport,
    bool? isHrmUser,
    String? createdDate,
    dynamic languageCode,
    dynamic loginId,
    dynamic patientStatusId,
    dynamic coa,
    dynamic hrmAccessToken,
    dynamic hrmUrl,
    dynamic tenantName,
    Contact? contact,
    dynamic role,
    dynamic userTypeId,
    bool? isPermittedForeignMission,
    bool? isOtApproval,
    dynamic expenses,
    dynamic patientServices,
    List<UserPatientStatusList>? userPatientStatusList,
    dynamic importTenantId,
    dynamic importBranchId,
    List<UserItemCategory>? userItemCategories,
    bool? inActive,
    dynamic branchId,
    dynamic branch,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return ModifiedByUser(
      contactId: contactId ?? this.contactId,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      roleId: roleId ?? this.roleId,
      isConsolidateReport: isConsolidateReport ?? this.isConsolidateReport,
      isHrmUser: isHrmUser ?? this.isHrmUser,
      createdDate: createdDate ?? this.createdDate,
      languageCode: languageCode ?? this.languageCode,
      loginId: loginId ?? this.loginId,
      patientStatusId: patientStatusId ?? this.patientStatusId,
      coa: coa ?? this.coa,
      hrmAccessToken: hrmAccessToken ?? this.hrmAccessToken,
      hrmUrl: hrmUrl ?? this.hrmUrl,
      tenantName: tenantName ?? this.tenantName,
      contact: contact ?? this.contact,
      role: role ?? this.role,
      userTypeId: userTypeId ?? this.userTypeId,
      isPermittedForeignMission:
          isPermittedForeignMission ?? this.isPermittedForeignMission,
      isOtApproval: isOtApproval ?? this.isOtApproval,
      expenses: expenses ?? this.expenses,
      patientServices: patientServices ?? this.patientServices,
      userPatientStatusList:
          userPatientStatusList ?? this.userPatientStatusList,
      importTenantId: importTenantId ?? this.importTenantId,
      importBranchId: importBranchId ?? this.importBranchId,
      userItemCategories: userItemCategories ?? this.userItemCategories,
      inActive: inActive ?? this.inActive,
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
      userName,
      password,
      roleId,
      isConsolidateReport,
      isHrmUser,
      createdDate,
      languageCode,
      loginId,
      patientStatusId,
      coa,
      hrmAccessToken,
      hrmUrl,
      tenantName,
      contact,
      role,
      userTypeId,
      isPermittedForeignMission,
      isOtApproval,
      expenses,
      patientServices,
      userPatientStatusList,
      importTenantId,
      importBranchId,
      userItemCategories,
      inActive,
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
