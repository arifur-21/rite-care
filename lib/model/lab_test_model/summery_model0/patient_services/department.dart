import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'tenant.dart';

part 'department.g.dart';

@JsonSerializable()
class Department extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'LabCategoryId')
  final dynamic labCategoryId;
  @JsonKey(name: 'IsCMH')
  final bool? isCmh;
  @JsonKey(name: 'ServiceProviders')
  final List<dynamic>? serviceProviders;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final Tenant? tenant;
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

  const Department({
    this.name,
    this.labCategoryId,
    this.isCmh,
    this.serviceProviders,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return _$DepartmentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DepartmentToJson(this);

  Department copyWith({
    String? name,
    dynamic labCategoryId,
    bool? isCmh,
    List<dynamic>? serviceProviders,
    dynamic tenantId,
    Tenant? tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Department(
      name: name ?? this.name,
      labCategoryId: labCategoryId ?? this.labCategoryId,
      isCmh: isCmh ?? this.isCmh,
      serviceProviders: serviceProviders ?? this.serviceProviders,
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
      labCategoryId,
      isCmh,
      serviceProviders,
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
