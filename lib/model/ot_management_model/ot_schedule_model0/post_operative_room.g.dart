// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_operative_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostOperativeRoom _$PostOperativeRoomFromJson(Map<String, dynamic> json) =>
    PostOperativeRoom(
      id: json['Id'] as int?,
      operationRoomId: json['OperationRoomId'] as int?,
      bedNo: json['BedNo'] as int?,
      occupency: json['Occupency'] as bool?,
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      patientId: json['PatientId'],
      operationRoom: json['OperationRoom'],
      postOperativePatientHistories:
          json['PostOperativePatientHistories'] as List<dynamic>?,
    );

Map<String, dynamic> _$PostOperativeRoomToJson(PostOperativeRoom instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'OperationRoomId': instance.operationRoomId,
      'BedNo': instance.bedNo,
      'Occupency': instance.occupency,
      'UserId': instance.userId,
      'Active': instance.active,
      'PatientId': instance.patientId,
      'OperationRoom': instance.operationRoom,
      'PostOperativePatientHistories': instance.postOperativePatientHistories,
    };
