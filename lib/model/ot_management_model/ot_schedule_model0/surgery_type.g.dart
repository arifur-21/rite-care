// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surgery_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurgeryType _$SurgeryTypeFromJson(Map<String, dynamic> json) => SurgeryType(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      description: json['Description'],
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      tenantId: json['TenantId'] as int?,
    );

Map<String, dynamic> _$SurgeryTypeToJson(SurgeryType instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'UserId': instance.userId,
      'Active': instance.active,
      'TenantId': instance.tenantId,
    };
