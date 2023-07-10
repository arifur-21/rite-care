// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCategory _$ItemCategoryFromJson(Map<String, dynamic> json) => ItemCategory(
      name: json['Name'] as String?,
      medicalTypeId: json['MedicalTypeId'] as int?,
      referralCommission: json['ReferralCommission'],
      isPathology: json['IsPathology'] as bool?,
      sampleId: json['SampleId'] as int?,
      items: json['Items'] as List<dynamic>?,
      itemSubCategories: json['ItemSubCategories'] as List<dynamic>?,
      medicalType: json['MedicalType'],
      tenantId: json['TenantId'] as int?,
      tenant: json['Tenant'],
      id: json['Id'] as int?,
      active: json['Active'] as bool?,
      userId: json['UserId'] as int?,
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'] as int?,
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ItemCategoryToJson(ItemCategory instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'MedicalTypeId': instance.medicalTypeId,
      'ReferralCommission': instance.referralCommission,
      'IsPathology': instance.isPathology,
      'SampleId': instance.sampleId,
      'Items': instance.items,
      'ItemSubCategories': instance.itemSubCategories,
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
