import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'surgery_type.g.dart';

@JsonSerializable()
class SurgeryType extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Description')
  final dynamic description;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'TenantId')
  final int? tenantId;

  const SurgeryType({
    this.id,
    this.name,
    this.description,
    this.userId,
    this.active,
    this.tenantId,
  });

  factory SurgeryType.fromJson(Map<String, dynamic> json) {
    return _$SurgeryTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SurgeryTypeToJson(this);

  SurgeryType copyWith({
    int? id,
    String? name,
    dynamic description,
    int? userId,
    bool? active,
    int? tenantId,
  }) {
    return SurgeryType(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      tenantId: tenantId ?? this.tenantId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      userId,
      active,
      tenantId,
    ];
  }
}
