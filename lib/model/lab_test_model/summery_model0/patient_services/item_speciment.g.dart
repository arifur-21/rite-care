// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_speciment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSpeciment _$ItemSpecimentFromJson(Map<String, dynamic> json) =>
    ItemSpeciment(
      name: json['Name'] as String?,
      medicalTypeId: json['MedicalTypeId'],
      items: json['Items'] as List<dynamic>?,
      medicalType: json['MedicalType'],
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ItemSpecimentToJson(ItemSpeciment instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'MedicalTypeId': instance.medicalTypeId,
      'Items': instance.items,
      'MedicalType': instance.medicalType,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
