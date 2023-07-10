// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referrer_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferrerType _$ReferrerTypeFromJson(Map<String, dynamic> json) => ReferrerType(
      name: json['Name'] as String?,
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ReferrerTypeToJson(ReferrerType instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
