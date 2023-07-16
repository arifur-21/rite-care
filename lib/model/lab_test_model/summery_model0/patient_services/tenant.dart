import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tenant.g.dart';

@JsonSerializable()
class Tenant extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Url')
  final String? url;
  @JsonKey(name: 'BranchName')
  final dynamic branchName;
  @JsonKey(name: 'BranchList')
  final dynamic branchList;
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

  const Tenant({
    this.name,
    this.url,
    this.branchName,
    this.branchList,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Tenant.fromJson(Map<String, dynamic> json) {
    return _$TenantFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TenantToJson(this);

  Tenant copyWith({
    String? name,
    String? url,
    dynamic branchName,
    dynamic branchList,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Tenant(
      name: name ?? this.name,
      url: url ?? this.url,
      branchName: branchName ?? this.branchName,
      branchList: branchList ?? this.branchList,
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
      url,
      branchName,
      branchList,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
