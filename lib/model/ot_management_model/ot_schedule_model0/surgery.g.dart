// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surgery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Surgery _$SurgeryFromJson(Map<String, dynamic> json) => Surgery(
      id: json['Id'] as int?,
      surgeryTypeId: json['SurgeryTypeId'] as int?,
      patientId: json['PatientId'] as int?,
      surgeryItemId: json['SurgeryItemId'] as int?,
      surgeryStatusId: json['SurgeryStatusId'] as int?,
      userId: json['UserId'] as int?,
      active: json['Active'] as bool?,
      branchId: json['BranchId'] as int?,
      tenantId: json['TenantId'] as int?,
      roomId: json['RoomId'] as int?,
      surgeryScheduleDate: json['SurgeryScheduleDate'] as String?,
      startTime: json['StartTime'],
      endTime: json['EndTime'],
      instrumentReceived: json['InstrumentReceived'] as bool?,
      instrumentRefund: json['InstrumentRefund'] as bool?,
      archived: json['Archived'] as bool?,
      disease: json['Disease'] as String?,
      ans: json['ANS'],
      asa: json['ASA'],
      ward: json['Ward'],
      isApproved: json['IsApproved'] as bool?,
      approvedUserId: json['ApprovedUserId'] as int?,
      surgeryServiceProviderMaps: json['SurgeryServiceProviderMaps'],
      surgeryType: json['SurgeryType'] == null
          ? null
          : SurgeryType.fromJson(json['SurgeryType'] as Map<String, dynamic>),
      surgeryStatus: json['SurgeryStatus'] == null
          ? null
          : SurgeryStatus.fromJson(
              json['SurgeryStatus'] as Map<String, dynamic>),
      operationRoom: json['OperationRoom'] == null
          ? null
          : OperationRoom.fromJson(
              json['OperationRoom'] as Map<String, dynamic>),
      patient: json['Patient'] == null
          ? null
          : Patient.fromJson(json['Patient'] as Map<String, dynamic>),
      item: json['Item'] == null
          ? null
          : Item.fromJson(json['Item'] as Map<String, dynamic>),
      surgeryNotes: (json['SurgeryNotes'] as List<dynamic>?)
          ?.map((e) => SurgeryNote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SurgeryToJson(Surgery instance) => <String, dynamic>{
      'Id': instance.id,
      'SurgeryTypeId': instance.surgeryTypeId,
      'PatientId': instance.patientId,
      'SurgeryItemId': instance.surgeryItemId,
      'SurgeryStatusId': instance.surgeryStatusId,
      'UserId': instance.userId,
      'Active': instance.active,
      'BranchId': instance.branchId,
      'TenantId': instance.tenantId,
      'RoomId': instance.roomId,
      'SurgeryScheduleDate': instance.surgeryScheduleDate,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'InstrumentReceived': instance.instrumentReceived,
      'InstrumentRefund': instance.instrumentRefund,
      'Archived': instance.archived,
      'Disease': instance.disease,
      'ANS': instance.ans,
      'ASA': instance.asa,
      'Ward': instance.ward,
      'IsApproved': instance.isApproved,
      'ApprovedUserId': instance.approvedUserId,
      'SurgeryServiceProviderMaps': instance.surgeryServiceProviderMaps,
      'SurgeryType': instance.surgeryType,
      'SurgeryStatus': instance.surgeryStatus,
      'OperationRoom': instance.operationRoom,
      'Patient': instance.patient,
      'Item': instance.item,
      'SurgeryNotes': instance.surgeryNotes,
    };
