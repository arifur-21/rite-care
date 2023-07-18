// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_provider_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceProviderType _$ServiceProviderTypeFromJson(Map<String, dynamic> json) =>
    ServiceProviderType(
      name: json['Name'] as String?,
      serviceProviders: json['ServiceProviders'] as List<dynamic>?,
      languageCode: json['LanguageCode'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ServiceProviderTypeToJson(
        ServiceProviderType instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'ServiceProviders': instance.serviceProviders,
      'LanguageCode': instance.languageCode,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
