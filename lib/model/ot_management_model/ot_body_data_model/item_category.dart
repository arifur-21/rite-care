import 'dart:convert';

import 'package:equatable/equatable.dart';

class ItemCategory extends Equatable {
  final String? name;
  final int? medicalTypeId;
  final dynamic referralCommission;
  final bool? isPathology;
  final int? sampleId;
  final List<dynamic>? items;
  final List<dynamic>? itemSubCategories;
  final dynamic medicalType;
  final int? tenantId;
  final dynamic tenant;
  final int? id;
  final bool? active;
  final int? userId;
  final bool? hasErrors;
  final int? errorCount;
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

  factory ItemCategory.fromMap(Map<String, dynamic> data) => ItemCategory(
        name: data['Name'] as String?,
        medicalTypeId: data['MedicalTypeId'] as int?,
        referralCommission: data['ReferralCommission'] as dynamic,
        isPathology: data['IsPathology'] as bool?,
        sampleId: data['SampleId'] as int?,
        items: data['Items'] as List<dynamic>?,
        itemSubCategories: data['ItemSubCategories'] as List<dynamic>?,
        medicalType: data['MedicalType'] as dynamic,
        tenantId: data['TenantId'] as int?,
        tenant: data['Tenant'] as dynamic,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as int?,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
        'MedicalTypeId': medicalTypeId,
        'ReferralCommission': referralCommission,
        'IsPathology': isPathology,
        'SampleId': sampleId,
        'Items': items,
        'ItemSubCategories': itemSubCategories,
        'MedicalType': medicalType,
        'TenantId': tenantId,
        'Tenant': tenant,
        'Id': id,
        'Active': active,
        'UserId': userId,
        'HasErrors': hasErrors,
        'ErrorCount': errorCount,
        'NoErrors': noErrors,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ItemCategory].
  factory ItemCategory.fromJson(String data) {
    return ItemCategory.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ItemCategory] to a JSON string.
  String toJson() => json.encode(toMap());

  ItemCategory copyWith({
    String? name,
    int? medicalTypeId,
    dynamic referralCommission,
    bool? isPathology,
    int? sampleId,
    List<dynamic>? items,
    List<dynamic>? itemSubCategories,
    dynamic medicalType,
    int? tenantId,
    dynamic tenant,
    int? id,
    bool? active,
    int? userId,
    bool? hasErrors,
    int? errorCount,
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
