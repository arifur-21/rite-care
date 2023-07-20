import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'patient_status.dart';

part 'user_patient_status_list.g.dart';

@JsonSerializable()
class UserPatientStatusList extends Equatable {
  @JsonKey(name: 'PatientStatusId')
  final dynamic patientStatusId;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'IsSelected')
  final bool? isSelected;
  @JsonKey(name: 'CreatedDate')
  final dynamic createdDate;
  @JsonKey(name: 'User')
  final dynamic user;
  @JsonKey(name: 'PatientStatus')
  final PatientStatus? patientStatus;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const UserPatientStatusList({
    this.patientStatusId,
    this.userId,
    this.isSelected,
    this.createdDate,
    this.user,
    this.patientStatus,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory UserPatientStatusList.fromJson(Map<String, dynamic> json) {
    return _$UserPatientStatusListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserPatientStatusListToJson(this);

  UserPatientStatusList copyWith({
    dynamic patientStatusId,
    dynamic userId,
    bool? isSelected,
    dynamic createdDate,
    dynamic user,
    PatientStatus? patientStatus,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return UserPatientStatusList(
      patientStatusId: patientStatusId ?? this.patientStatusId,
      userId: userId ?? this.userId,
      isSelected: isSelected ?? this.isSelected,
      createdDate: createdDate ?? this.createdDate,
      user: user ?? this.user,
      patientStatus: patientStatus ?? this.patientStatus,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
      id: id ?? this.id,
      active: active ?? this.active,
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
      patientStatusId,
      userId,
      isSelected,
      createdDate,
      user,
      patientStatus,
      tenantId,
      tenant,
      id,
      active,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
