import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item_category.dart';

part 'item.g.dart';

@JsonSerializable()
class Item extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'GenericName')
  final dynamic genericName;
  @JsonKey(name: 'Code')
  final String? code;
  @JsonKey(name: 'ItemTypeId')
  final int? itemTypeId;
  @JsonKey(name: 'MedicalTypeId')
  final int? medicalTypeId;
  @JsonKey(name: 'ItemCategoryId')
  final int? itemCategoryId;
  @JsonKey(name: 'MeasurementUnitId')
  final dynamic measurementUnitId;
  @JsonKey(name: 'SalePrice')
  final double? salePrice;
  @JsonKey(name: 'BuyPrice')
  final double? buyPrice;
  @JsonKey(name: 'ServiceProviderId')
  final dynamic serviceProviderId;
  @JsonKey(name: 'ReferralAllowed')
  final bool? referralAllowed;
  @JsonKey(name: 'Description')
  final dynamic description;
  @JsonKey(name: 'DefaultReferrarFee')
  final double? defaultReferrarFee;
  @JsonKey(name: 'LabReportGroupId')
  final dynamic labReportGroupId;
  @JsonKey(name: 'ItemType')
  final dynamic itemType;
  @JsonKey(name: 'ItemCategory')
  final ItemCategory? itemCategory;
  @JsonKey(name: 'MeasurementUnit')
  final dynamic measurementUnit;
  @JsonKey(name: 'MedicalType')
  final dynamic medicalType;
  @JsonKey(name: 'Inventory')
  final dynamic inventory;
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final int? errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const Item({
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

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  Item copyWith({
    String? name,
    dynamic genericName,
    String? code,
    int? itemTypeId,
    int? medicalTypeId,
    int? itemCategoryId,
    dynamic measurementUnitId,
    double? salePrice,
    double? buyPrice,
    dynamic serviceProviderId,
    bool? referralAllowed,
    dynamic description,
    double? defaultReferrarFee,
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
    return Item(
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
