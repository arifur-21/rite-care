import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_category.g.dart';

@JsonSerializable()
class ItemCategory extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'MedicalTypeId')
  final dynamic medicalTypeId;
  @JsonKey(name: 'ReferralCommission')
  final dynamic referralCommission;
  @JsonKey(name: 'IsPathology')
  final bool? isPathology;
  @JsonKey(name: 'SampleId')
  final dynamic sampleId;
  @JsonKey(name: 'Items')
  final List<dynamic>? items;
  @JsonKey(name: 'ItemSubCategories')
  final List<dynamic>? itemSubCategories;
  @JsonKey(name: 'MedicalType')
  final dynamic medicalType;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const ItemCategory({
    this.name,
    this.medicalTypeId,
    this.referralCommission,
    this.isPathology,
    this.sampleId,
    this.items,
    this.itemSubCategories,
    this.medicalType,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory ItemCategory.fromJson(Map<String, dynamic> json) {
    return _$ItemCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemCategoryToJson(this);

  ItemCategory copyWith({
    String? name,
    dynamic medicalTypeId,
    dynamic referralCommission,
    bool? isPathology,
    dynamic sampleId,
    List<dynamic>? items,
    List<dynamic>? itemSubCategories,
    dynamic medicalType,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return ItemCategory(
      name: name ?? this.name,
      medicalTypeId: medicalTypeId ?? this.medicalTypeId,
      referralCommission: referralCommission ?? this.referralCommission,
      isPathology: isPathology ?? this.isPathology,
      sampleId: sampleId ?? this.sampleId,
      items: items ?? this.items,
      itemSubCategories: itemSubCategories ?? this.itemSubCategories,
      medicalType: medicalType ?? this.medicalType,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
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
      medicalTypeId,
      referralCommission,
      isPathology,
      sampleId,
      items,
      itemSubCategories,
      medicalType,
      tenantId,
      tenant,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
