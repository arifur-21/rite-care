import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_speciment.g.dart';

@JsonSerializable()
class ItemSpeciment extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'MedicalTypeId')
  final dynamic medicalTypeId;
  @JsonKey(name: 'Items')
  final List<dynamic>? items;
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

  const ItemSpeciment({
    this.name,
    this.medicalTypeId,
    this.items,
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

  factory ItemSpeciment.fromJson(Map<String, dynamic> json) {
    return _$ItemSpecimentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemSpecimentToJson(this);

  ItemSpeciment copyWith({
    String? name,
    dynamic medicalTypeId,
    List<dynamic>? items,
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
    return ItemSpeciment(
      name: name ?? this.name,
      medicalTypeId: medicalTypeId ?? this.medicalTypeId,
      items: items ?? this.items,
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
      items,
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
