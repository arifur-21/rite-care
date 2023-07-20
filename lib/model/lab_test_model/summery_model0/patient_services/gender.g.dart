// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gender _$GenderFromJson(Map<String, dynamic> json) => Gender(
      name: json['Name'] as String?,
      code: json['Code'],
      typeName: json['TypeName'] as String?,
      user: json['User'],
      bloodDonors: json['BloodDonors'] as List<dynamic>?,
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$GenderToJson(Gender instance) => <String, dynamic>{
      'Name': instance.name,
      'Code': instance.code,
      'TypeName': instance.typeName,
      'User': instance.user,
      'BloodDonors': instance.bloodDonors,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
