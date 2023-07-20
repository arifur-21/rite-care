// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      name: json['Name'] as String?,
      labCategoryId: json['LabCategoryId'],
      isCmh: json['IsCMH'] as bool?,
      serviceProviders: json['ServiceProviders'] as List<dynamic>?,
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

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'LabCategoryId': instance.labCategoryId,
      'IsCMH': instance.isCmh,
      'ServiceProviders': instance.serviceProviders,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
