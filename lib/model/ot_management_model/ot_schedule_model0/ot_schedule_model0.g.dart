// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ot_schedule_model0.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtScheduleModel0 _$OtScheduleModel0FromJson(Map<String, dynamic> json) =>
    OtScheduleModel0(
      surgery: json['surgery'] == null
          ? null
          : Surgery.fromJson(json['surgery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtScheduleModel0ToJson(OtScheduleModel0 instance) =>
    <String, dynamic>{
      'surgery': instance.surgery,
    };
