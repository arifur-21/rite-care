import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'surgery_status.g.dart';

@JsonSerializable()
class SurgeryStatus extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'SurgeryDetails')
  final dynamic surgeryDetails;

  const SurgeryStatus({
    this.id,
    this.name,
    this.userId,
    this.active,
    this.surgeryDetails,
  });

  factory SurgeryStatus.fromJson(Map<String, dynamic> json) {
    return _$SurgeryStatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SurgeryStatusToJson(this);

  SurgeryStatus copyWith({
    int? id,
    String? name,
    int? userId,
    bool? active,
    dynamic surgeryDetails,
  }) {
    return SurgeryStatus(
      id: id ?? this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      surgeryDetails: surgeryDetails ?? this.surgeryDetails,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, userId, active, surgeryDetails];
}
