import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'item_category.dart';

class OtItem extends Equatable {
  final String? name;
  final dynamic genericName;
  final String? code;
  final int? itemTypeId;
  final int? medicalTypeId;
  final int? itemCategoryId;
  final dynamic measurementUnitId;
  final int? salePrice;
  final int? buyPrice;
  final dynamic serviceProviderId;
  final bool? referralAllowed;
  final dynamic description;
  final int? defaultReferrarFee;
  final dynamic labReportGroupId;
  final dynamic itemType;
  final ItemCategory? itemCategory;
  final dynamic measurementUnit;
  final dynamic medicalType;
  final dynamic inventory;
  final int? id;
  final bool? active;
  final int? userId;
  final bool? hasErrors;
  final int? errorCount;
  final bool? noErrors;

  const OtItem({
    this.name,
    this.genericName,
    this.code,
    this.itemTypeId,
    this.medicalTypeId,
    this.itemCategoryId,
    this.measurementUnitId,
    this.salePrice,
    this.buyPrice,
    this.serviceProviderId,
    this.referralAllowed,
    this.description,
    this.defaultReferrarFee,
    this.labReportGroupId,
    this.itemType,
    this.itemCategory,
    this.measurementUnit,
    this.medicalType,
    this.inventory,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory OtItem.fromMap(Map<String, dynamic> data) => OtItem(
        name: data['Name'] as String?,
        genericName: data['GenericName'] as dynamic,
        code: data['Code'] as String?,
        itemTypeId: data['ItemTypeId'] as int?,
        medicalTypeId: data['MedicalTypeId'] as int?,
        itemCategoryId: data['ItemCategoryId'] as int?,
        measurementUnitId: data['MeasurementUnitId'] as dynamic,
        salePrice: data['SalePrice'] as int?,
        buyPrice: data['BuyPrice'] as int?,
        serviceProviderId: data['ServiceProviderId'] as dynamic,
        referralAllowed: data['ReferralAllowed'] as bool?,
        description: data['Description'] as dynamic,
        defaultReferrarFee: data['DefaultReferrarFee'] as int?,
        labReportGroupId: data['LabReportGroupId'] as dynamic,
        itemType: data['ItemType'] as dynamic,
        itemCategory: data['ItemCategory'] == null
            ? null
            : ItemCategory.fromMap(
                data['ItemCategory'] as Map<String, dynamic>),
        measurementUnit: data['MeasurementUnit'] as dynamic,
        medicalType: data['MedicalType'] as dynamic,
        inventory: data['Inventory'] as dynamic,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as int?,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
        'GenericName': genericName,
        'Code': code,
        'ItemTypeId': itemTypeId,
        'MedicalTypeId': medicalTypeId,
        'ItemCategoryId': itemCategoryId,
        'MeasurementUnitId': measurementUnitId,
        'SalePrice': salePrice,
        'BuyPrice': buyPrice,
        'ServiceProviderId': serviceProviderId,
        'ReferralAllowed': referralAllowed,
        'Description': description,
        'DefaultReferrarFee': defaultReferrarFee,
        'LabReportGroupId': labReportGroupId,
        'ItemType': itemType,
        'ItemCategory': itemCategory?.toMap(),
        'MeasurementUnit': measurementUnit,
        'MedicalType': medicalType,
        'Inventory': inventory,
        'Id': id,
        'Active': active,
        'UserId': userId,
        'HasErrors': hasErrors,
        'ErrorCount': errorCount,
        'NoErrors': noErrors,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OtItem].
  factory OtItem.fromJson(String data) {
    return OtItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OtItem] to a JSON string.
  String toJson() => json.encode(toMap());

  OtItem copyWith({
    String? name,
    dynamic genericName,
    String? code,
    int? itemTypeId,
    int? medicalTypeId,
    int? itemCategoryId,
    dynamic measurementUnitId,
    int? salePrice,
    int? buyPrice,
    dynamic serviceProviderId,
    bool? referralAllowed,
    dynamic description,
    int? defaultReferrarFee,
    dynamic labReportGroupId,
    dynamic itemType,
    ItemCategory? itemCategory,
    dynamic measurementUnit,
    dynamic medicalType,
    dynamic inventory,
    int? id,
    bool? active,
    int? userId,
    bool? hasErrors,
    int? errorCount,
    bool? noErrors,
  }) {
    return OtItem(
      name: name ?? this.name,
      genericName: genericName ?? this.genericName,
      code: code ?? this.code,
      itemTypeId: itemTypeId ?? this.itemTypeId,
      medicalTypeId: medicalTypeId ?? this.medicalTypeId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      measurementUnitId: measurementUnitId ?? this.measurementUnitId,
      salePrice: salePrice ?? this.salePrice,
      buyPrice: buyPrice ?? this.buyPrice,
      serviceProviderId: serviceProviderId ?? this.serviceProviderId,
      referralAllowed: referralAllowed ?? this.referralAllowed,
      description: description ?? this.description,
      defaultReferrarFee: defaultReferrarFee ?? this.defaultReferrarFee,
      labReportGroupId: labReportGroupId ?? this.labReportGroupId,
      itemType: itemType ?? this.itemType,
      itemCategory: itemCategory ?? this.itemCategory,
      measurementUnit: measurementUnit ?? this.measurementUnit,
      medicalType: medicalType ?? this.medicalType,
      inventory: inventory ?? this.inventory,
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
      name,
      genericName,
      code,
      itemTypeId,
      medicalTypeId,
      itemCategoryId,
      measurementUnitId,
      salePrice,
      buyPrice,
      serviceProviderId,
      referralAllowed,
      description,
      defaultReferrarFee,
      labReportGroupId,
      itemType,
      itemCategory,
      measurementUnit,
      medicalType,
      inventory,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
