// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientStatus _$PatientStatusFromJson(Map<String, dynamic> json) =>
    PatientStatus(
      name: json['Name'] as String?,
      prefix: json['Prefix'] as String?,
      languageCode: json['LanguageCode'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$PatientStatusToJson(PatientStatus instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Prefix': instance.prefix,
      'LanguageCode': instance.languageCode,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
