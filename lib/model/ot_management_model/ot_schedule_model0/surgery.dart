import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
import 'operation_room.dart';
import 'patient.dart';
import 'surgery_note.dart';
import 'surgery_status.dart';
import 'surgery_type.dart';

part 'surgery.g.dart';

@JsonSerializable()
class  Surgery extends Equatable {
  @JsonKey(name: 'Id')
  int? id;
  @JsonKey(name: 'SurgeryTypeId')
  int? surgeryTypeId;
  @JsonKey(name: 'PatientId')
  int? patientId;
  @JsonKey(name: 'SurgeryItemId')
  int? surgeryItemId;
  @JsonKey(name: 'SurgeryStatusId')
  int? surgeryStatusId;
  @JsonKey(name: 'UserId')
  int? userId;
  @JsonKey(name: 'Active')
  bool? active;
  @JsonKey(name: 'BranchId')
  int? branchId;
  @JsonKey(name: 'TenantId')
  int? tenantId;
  @JsonKey(name: 'RoomId')
  int? roomId;
  @JsonKey(name: 'SurgeryScheduleDate')
  String? surgeryScheduleDate;
  @JsonKey(name: 'StartTime')
  dynamic startTime;
  @JsonKey(name: 'EndTime')
  dynamic endTime;
  @JsonKey(name: 'InstrumentReceived')
  bool? instrumentReceived;
  @JsonKey(name: 'InstrumentRefund')
  bool? instrumentRefund;
  @JsonKey(name: 'Archived')
  bool? archived;
  @JsonKey(name: 'Disease')
  String? disease;
  @JsonKey(name: 'ANS')
  dynamic ans;
  @JsonKey(name: 'ASA')
  dynamic asa;
  @JsonKey(name: 'Ward')
  dynamic ward;
  @JsonKey(name: 'IsApproved')
  bool? isApproved;
  @JsonKey(name: 'ApprovedUserId')
  int? approvedUserId;
  @JsonKey(name: 'SurgeryServiceProviderMaps')
  dynamic surgeryServiceProviderMaps;
  @JsonKey(name: 'SurgeryType')
  SurgeryType? surgeryType;
  @JsonKey(name: 'SurgeryStatus')
  SurgeryStatus? surgeryStatus;
  @JsonKey(name: 'OperationRoom')
  OperationRoom? operationRoom;
  @JsonKey(name: 'Patient')
  Patient? patient;
  @JsonKey(name: 'Item')
  Item? item;
  @JsonKey(name: 'SurgeryNotes')
  List<SurgeryNote>? surgeryNotes;

  Surgery({
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

  factory Surgery.fromJson(Map<String, dynamic> json) {
    return _$SurgeryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SurgeryToJson(this);

  Surgery copyWith({
    int? id,
    int? surgeryTypeId,
    int? patientId,
    int? surgeryItemId,
    int? surgeryStatusId,
    int? userId,
    bool? active,
    int? branchId,
    int? tenantId,
    int? roomId,
    String? surgeryScheduleDate,
    dynamic startTime,
    dynamic endTime,
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
    Item? item,
    List<SurgeryNote>? surgeryNotes,
  }) {
    return Surgery(
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
