import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'item.dart';
import 'operation_room.dart';
import 'patient.dart';
import 'surgery_note.dart';
import 'surgery_status.dart';
import 'surgery_type.dart';

class SurgeryModel extends Equatable {
  final int? id;
  final int? surgeryTypeId;
  final int? patientId;
  final int? surgeryItemId;
   String? surgeryStatusId;
  final int? userId;
  final bool? active;
  final int? branchId;
  final int? tenantId;
  final int? roomId;
  final String? surgeryScheduleDate;
  final String? startTime;
  final String? endTime;
  final bool? instrumentReceived;
  final bool? instrumentRefund;
  final bool? archived;
  final String? disease;
  final dynamic ans;
  final dynamic asa;
  final dynamic ward;
  final bool? isApproved;
  final int? approvedUserId;
  final dynamic surgeryServiceProviderMaps;
  final SurgeryType? surgeryType;
  final SurgeryStatus? surgeryStatus;
  final OperationRoom? operationRoom;
  final Patient? patient;
  final OtItem? item;
  final List<SurgeryNote>? surgeryNotes;

   SurgeryModel({
    this.id,
    this.surgeryTypeId,
    this.patientId,
    this.surgeryItemId,
    this.surgeryStatusId,
    this.userId,
    this.active,
    this.branchId,
    this.tenantId,
    this.roomId,
    this.surgeryScheduleDate,
    this.startTime,
    this.endTime,
    this.instrumentReceived,
    this.instrumentRefund,
    this.archived,
    this.disease,
    this.ans,
    this.asa,
    this.ward,
    this.isApproved,
    this.approvedUserId,
    this.surgeryServiceProviderMaps,
    this.surgeryType,
    this.surgeryStatus,
    this.operationRoom,
    this.patient,
    this.item,
    this.surgeryNotes,
  });

  factory SurgeryModel.fromMap(Map<String, dynamic> data) => SurgeryModel(
        id: data['Id'] as int?,
        surgeryTypeId: data['SurgeryTypeId'] as int?,
        patientId: data['PatientId'] as int?,
        surgeryItemId: data['SurgeryItemId'] as int?,
        surgeryStatusId: data['SurgeryStatusId'] as String?,
        userId: data['UserId'] as int?,
        active: data['Active'] as bool?,
        branchId: data['BranchId'] as int?,
        tenantId: data['TenantId'] as int?,
        roomId: data['RoomId'] as int?,
        surgeryScheduleDate: data['SurgeryScheduleDate'] as String?,
        startTime: data['StartTime'] as String?,
        endTime: data['EndTime'] as String?,
        instrumentReceived: data['InstrumentReceived'] as bool?,
        instrumentRefund: data['InstrumentRefund'] as bool?,
        archived: data['Archived'] as bool?,
        disease: data['Disease'] as String?,
        ans: data['ANS'] as dynamic,
        asa: data['ASA'] as dynamic,
        ward: data['Ward'] as dynamic,
        isApproved: data['IsApproved'] as bool?,
        approvedUserId: data['ApprovedUserId'] as int?,
        surgeryServiceProviderMaps:
            data['SurgeryServiceProviderMaps'] as dynamic,
        surgeryType: data['SurgeryType'] == null
            ? null
            : SurgeryType.fromMap(data['SurgeryType'] as Map<String, dynamic>),
        surgeryStatus: data['SurgeryStatus'] == null
            ? null
            : SurgeryStatus.fromMap(
                data['SurgeryStatus'] as Map<String, dynamic>),
        operationRoom: data['OperationRoom'] == null
            ? null
            : OperationRoom.fromMap(
                data['OperationRoom'] as Map<String, dynamic>),
        patient: data['Patient'] == null
            ? null
            : Patient.fromMap(data['Patient'] as Map<String, dynamic>),
        item: data['Item'] == null
            ? null
            : OtItem.fromMap(data['Item'] as Map<String, dynamic>),
        surgeryNotes: (data['SurgeryNotes'] as List<dynamic>?)
            ?.map((e) => SurgeryNote.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'SurgeryTypeId': surgeryTypeId,
        'PatientId': patientId,
        'SurgeryItemId': surgeryItemId,
        'SurgeryStatusId': surgeryStatusId,
        'UserId': userId,
        'Active': active,
        'BranchId': branchId,
        'TenantId': tenantId,
        'RoomId': roomId,
        'SurgeryScheduleDate': surgeryScheduleDate,
        'StartTime': startTime,
        'EndTime': endTime,
        'InstrumentReceived': instrumentReceived,
        'InstrumentRefund': instrumentRefund,
        'Archived': archived,
        'Disease': disease,
        'ANS': ans,
        'ASA': asa,
        'Ward': ward,
        'IsApproved': isApproved,
        'ApprovedUserId': approvedUserId,
        'SurgeryServiceProviderMaps': surgeryServiceProviderMaps,
        'SurgeryType': surgeryType?.toMap(),
        'SurgeryStatus': surgeryStatus?.toMap(),
        'OperationRoom': operationRoom?.toMap(),
        'Patient': patient?.toMap(),
        'Item': item?.toMap(),
        'SurgeryNotes': surgeryNotes?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SurgeryModel].
  factory SurgeryModel.fromJson(String data) {
    return SurgeryModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SurgeryModel] to a JSON string.
  String toJson() => json.encode(toMap());

  SurgeryModel copyWith({
    int? id,
    int? surgeryTypeId,
    int? patientId,
    int? surgeryItemId,
    String? surgeryStatusId,
    int? userId,
    bool? active,
    int? branchId,
    int? tenantId,
    int? roomId,
    String? surgeryScheduleDate,
    String? startTime,
    String? endTime,
    bool? instrumentReceived,
    bool? instrumentRefund,
    bool? archived,
    String? disease,
    dynamic ans,
    dynamic asa,
    dynamic ward,
    bool? isApproved,
    int? approvedUserId,
    dynamic surgeryServiceProviderMaps,
    SurgeryType? surgeryType,
    SurgeryStatus? surgeryStatus,
    OperationRoom? operationRoom,
    Patient? patient,
    OtItem? item,
    List<SurgeryNote>? surgeryNotes,
  }) {
    return SurgeryModel(
      id: id ?? this.id,
      surgeryTypeId: surgeryTypeId ?? this.surgeryTypeId,
      patientId: patientId ?? this.patientId,
      surgeryItemId: surgeryItemId ?? this.surgeryItemId,
      surgeryStatusId: surgeryStatusId ?? this.surgeryStatusId,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      branchId: branchId ?? this.branchId,
      tenantId: tenantId ?? this.tenantId,
      roomId: roomId ?? this.roomId,
      surgeryScheduleDate: surgeryScheduleDate ?? this.surgeryScheduleDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      instrumentReceived: instrumentReceived ?? this.instrumentReceived,
      instrumentRefund: instrumentRefund ?? this.instrumentRefund,
      archived: archived ?? this.archived,
      disease: disease ?? this.disease,
      ans: ans ?? this.ans,
      asa: asa ?? this.asa,
      ward: ward ?? this.ward,
      isApproved: isApproved ?? this.isApproved,
      approvedUserId: approvedUserId ?? this.approvedUserId,
      surgeryServiceProviderMaps:
          surgeryServiceProviderMaps ?? this.surgeryServiceProviderMaps,
      surgeryType: surgeryType ?? this.surgeryType,
      surgeryStatus: surgeryStatus ?? this.surgeryStatus,
      operationRoom: operationRoom ?? this.operationRoom,
      patient: patient ?? this.patient,
      item: item ?? this.item,
      surgeryNotes: surgeryNotes ?? this.surgeryNotes,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      surgeryTypeId,
      patientId,
      surgeryItemId,
      surgeryStatusId,
      userId,
      active,
      branchId,
      tenantId,
      roomId,
      surgeryScheduleDate,
      startTime,
      endTime,
      instrumentReceived,
      instrumentRefund,
      archived,
      disease,
      ans,
      asa,
      ward,
      isApproved,
      approvedUserId,
      surgeryServiceProviderMaps,
      surgeryType,
      surgeryStatus,
      operationRoom,
      patient,
      item,
      surgeryNotes,
    ];
  }
}
