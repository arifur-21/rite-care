// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surgery_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurgeryNote _$SurgeryNoteFromJson(Map<String, dynamic> json) => SurgeryNote(
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      id: json['Id'] as int?,
      note: json['Note'] as String?,
      surgeryId: json['SurgeryId'] as int?,
    );

Map<String, dynamic> _$SurgeryNoteToJson(SurgeryNote instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'Active': instance.active,
      'Id': instance.id,
      'Note': instance.note,
      'SurgeryId': instance.surgeryId,
    };
