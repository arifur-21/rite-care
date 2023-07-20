// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relationship _$RelationshipFromJson(Map<String, dynamic> json) => Relationship(
      name: json['Name'] as String?,
      languageCode: json['LanguageCode'] as String?,
      id: json['Id'] as int?,
      active: json['Active'] as bool?,
      userId: json['UserId'] as int?,
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'] as int?,
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$RelationshipToJson(Relationship instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'LanguageCode': instance.languageCode,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
