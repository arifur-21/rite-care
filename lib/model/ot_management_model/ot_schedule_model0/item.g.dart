// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['Name'] as String?,
      genericName: json['GenericName'],
      code: json['Code'] as String?,
      itemTypeId: json['ItemTypeId'] as int?,
      medicalTypeId: json['MedicalTypeId'] as int?,
      itemCategoryId: json['ItemCategoryId'] as int?,
      measurementUnitId: json['MeasurementUnitId'],
      salePrice: (json['SalePrice'] as num?)?.toDouble(),
      buyPrice: (json['BuyPrice'] as num?)?.toDouble(),
      serviceProviderId: json['ServiceProviderId'],
      referralAllowed: json['ReferralAllowed'] as bool?,
      description: json['Description'],
      defaultReferrarFee: (json['DefaultReferrarFee'] as num?)?.toDouble(),
      labReportGroupId: json['LabReportGroupId'],
      itemType: json['ItemType'],
      itemCategory: json['ItemCategory'] == null
          ? null
          : ItemCategory.fromJson(json['ItemCategory'] as Map<String, dynamic>),
      measurementUnit: json['MeasurementUnit'],
      medicalType: json['MedicalType'],
      inventory: json['Inventory'],
      id: json['Id'] as int?,
      active: json['Active'] as bool?,
      userId: json['UserId'] as int?,
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'] as int?,
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'Name': instance.name,
      'GenericName': instance.genericName,
      'Code': instance.code,
      'ItemTypeId': instance.itemTypeId,
      'MedicalTypeId': instance.medicalTypeId,
      'ItemCategoryId': instance.itemCategoryId,
      'MeasurementUnitId': instance.measurementUnitId,
      'SalePrice': instance.salePrice,
      'BuyPrice': instance.buyPrice,
      'ServiceProviderId': instance.serviceProviderId,
      'ReferralAllowed': instance.referralAllowed,
      'Description': instance.description,
      'DefaultReferrarFee': instance.defaultReferrarFee,
      'LabReportGroupId': instance.labReportGroupId,
      'ItemType': instance.itemType,
      'ItemCategory': instance.itemCategory,
      'MeasurementUnit': instance.measurementUnit,
      'MedicalType': instance.medicalType,
      'Inventory': instance.inventory,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
