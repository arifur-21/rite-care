import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'post_operative_room.dart';
import 'surgery_type.dart';
import 'user.dart';

part 'operation_room.g.dart';

@JsonSerializable()
class OperationRoom extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'RoomNumber')
  final String? roomNumber;
  @JsonKey(name: 'RoomName')
  final String? roomName;
  @JsonKey(name: 'SurgeryTypeId')
  final int? surgeryTypeId;
  @JsonKey(name: 'InchargeId')
  final int? inchargeId;
  @JsonKey(name: 'NoOfBed')
  final int? noOfBed;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'BranchId')
  final int? branchId;
  @JsonKey(name: 'Branch')
  final dynamic branch;
  @JsonKey(name: 'TenantId')
  final int? tenantId;
  @JsonKey(name: 'SurgeryType')
  final SurgeryType? surgeryType;
  @JsonKey(name: 'User')
  final User? user;
  @JsonKey(name: 'PostOperativeRooms')
  final List<PostOperativeRoom>? postOperativeRooms;

  const OperationRoom({
    this.id,
    this.roomNumber,
    this.roomName,
    this.surgeryTypeId,
    this.inchargeId,
    this.noOfBed,
    this.userId,
    this.active,
    this.branchId,
    this.branch,
    this.tenantId,
    this.surgeryType,
    this.user,
    this.postOperativeRooms,
  });

  factory OperationRoom.fromJson(Map<String, dynamic> json) {
    return _$OperationRoomFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OperationRoomToJson(this);

  OperationRoom copyWith({
    int? id,
    String? roomNumber,
    String? roomName,
    int? surgeryTypeId,
    int? inchargeId,
    int? noOfBed,
    int? userId,
    bool? active,
    int? branchId,
    dynamic branch,
    int? tenantId,
    SurgeryType? surgeryType,
    User? user,
    List<PostOperativeRoom>? postOperativeRooms,
  }) {
    return OperationRoom(
      id: id ?? this.id,
      roomNumber: roomNumber ?? this.roomNumber,
      roomName: roomName ?? this.roomName,
      surgeryTypeId: surgeryTypeId ?? this.surgeryTypeId,
      inchargeId: inchargeId ?? this.inchargeId,
      noOfBed: noOfBed ?? this.noOfBed,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      branchId: branchId ?? this.branchId,
      branch: branch ?? this.branch,
      tenantId: tenantId ?? this.tenantId,
      surgeryType: surgeryType ?? this.surgeryType,
      user: user ?? this.user,
      postOperativeRooms: postOperativeRooms ?? this.postOperativeRooms,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      roomNumber,
      roomName,
      surgeryTypeId,
      inchargeId,
      noOfBed,
      userId,
      active,
      branchId,
      branch,
      tenantId,
      surgeryType,
      user,
      postOperativeRooms,
    ];
  }
}
