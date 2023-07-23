// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationRoom _$OperationRoomFromJson(Map<String, dynamic> json) =>
    OperationRoom(
      id: json['Id'] as int?,
      roomNumber: json['RoomNumber'] as String?,
      roomName: json['RoomName'] as String?,
      surgeryTypeId: json['SurgeryTypeId'] as int?,
      inchargeId: json['InchargeId'] as int?,
      noOfBed: json['NoOfBed'] as int?,
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      branchId: json['BranchId'] as int?,
      branch: json['Branch'],
      tenantId: json['TenantId'] as int?,
      surgeryType: json['SurgeryType'] == null
          ? null
          : SurgeryType.fromJson(json['SurgeryType'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : User.fromJson(json['User'] as Map<String, dynamic>),
      postOperativeRooms: (json['PostOperativeRooms'] as List<dynamic>?)
          ?.map((e) => PostOperativeRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OperationRoomToJson(OperationRoom instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'RoomNumber': instance.roomNumber,
      'RoomName': instance.roomName,
      'SurgeryTypeId': instance.surgeryTypeId,
      'InchargeId': instance.inchargeId,
      'NoOfBed': instance.noOfBed,
      'UserId': instance.userId,
      'Active': instance.active,
      'BranchId': instance.branchId,
      'Branch': instance.branch,
      'TenantId': instance.tenantId,
      'SurgeryType': instance.surgeryType,
      'User': instance.user,
      'PostOperativeRooms': instance.postOperativeRooms,
    };
