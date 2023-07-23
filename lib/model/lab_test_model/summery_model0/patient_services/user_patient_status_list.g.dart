// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_patient_status_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPatientStatusList _$UserPatientStatusListFromJson(
        Map<String, dynamic> json) =>
    UserPatientStatusList(
      patientStatusId: json['PatientStatusId'],
      userId: json['UserId'],
      isSelected: json['IsSelected'] as bool?,
      createdDate: json['CreatedDate'],
      user: json['User'],
      patientStatus: json['PatientStatus'] == null
          ? null
          : PatientStatus.fromJson(
              json['PatientStatus'] as Map<String, dynamic>),
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$UserPatientStatusListToJson(
        UserPatientStatusList instance) =>
    <String, dynamic>{
      'PatientStatusId': instance.patientStatusId,
      'UserId': instance.userId,
      'IsSelected': instance.isSelected,
      'CreatedDate': instance.createdDate,
      'User': instance.user,
      'PatientStatus': instance.patientStatus,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
