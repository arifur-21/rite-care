// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_report_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabReportGroup _$LabReportGroupFromJson(Map<String, dynamic> json) =>
    LabReportGroup(
      name: json['Name'] as String?,
      items: json['Items'] as List<dynamic>?,
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

Map<String, dynamic> _$LabReportGroupToJson(LabReportGroup instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Items': instance.items,
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
