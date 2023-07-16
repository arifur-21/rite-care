import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'tenant.dart';

part 'branch.g.dart';

@JsonSerializable()
class Branch extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'IsMainBranch')
  final bool? isMainBranch;
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

  const Branch({
    this.name,
    this.isMainBranch,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Branch.fromJson(Map<String, dynamic> json) {
    return _$BranchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchToJson(this);

  Branch copyWith({
    String? name,
    bool? isMainBranch,
    dynamic tenantId,
    Tenant? tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Branch(
      name: name ?? this.name,
      isMainBranch: isMainBranch ?? this.isMainBranch,
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
      isMainBranch,
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
