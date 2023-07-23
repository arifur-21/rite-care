// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserItemCategory _$UserItemCategoryFromJson(Map<String, dynamic> json) =>
    UserItemCategory(
      itemCategoryId: json['ItemCategoryId'],
      userId: json['UserId'],
      isSelected: json['IsSelected'] as bool?,
      createdDate: json['CreatedDate'],
      user: json['User'],
      itemCategory: json['ItemCategory'],
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$UserItemCategoryToJson(UserItemCategory instance) =>
    <String, dynamic>{
      'ItemCategoryId': instance.itemCategoryId,
      'UserId': instance.userId,
      'IsSelected': instance.isSelected,
      'CreatedDate': instance.createdDate,
      'User': instance.user,
      'ItemCategory': instance.itemCategory,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
