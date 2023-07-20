// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      name: json['Name'] as String?,
      isMainBranch: json['IsMainBranch'] as bool?,
      tenantId: json['TenantId'],
      tenant: json['Tenant'] == null
          ? null
          : Tenant.fromJson(json['Tenant'] as Map<String, dynamic>),
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'Name': instance.name,
      'IsMainBranch': instance.isMainBranch,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
