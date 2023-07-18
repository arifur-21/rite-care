// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_prefix.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientPrefix _$PatientPrefixFromJson(Map<String, dynamic> json) =>
    PatientPrefix(
      name: json['Name'] as String?,
      prefix: json['Prefix'] as String?,
      languageCode: json['LanguageCode'] as String?,
      id: json['Id'] as int?,
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'] as int?,
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$PatientPrefixToJson(PatientPrefix instance) =>
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
