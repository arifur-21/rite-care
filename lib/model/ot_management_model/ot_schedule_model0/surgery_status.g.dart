// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surgery_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurgeryStatus _$SurgeryStatusFromJson(Map<String, dynamic> json) =>
    SurgeryStatus(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      surgeryDetails: json['SurgeryDetails'],
    );

Map<String, dynamic> _$SurgeryStatusToJson(SurgeryStatus instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'UserId': instance.userId,
      'Active': instance.active,
      'SurgeryDetails': instance.surgeryDetails,
    };
