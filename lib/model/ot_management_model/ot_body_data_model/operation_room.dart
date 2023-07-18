import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'post_operative_room.dart';
import 'surgery_type.dart';
import 'user.dart';

class OperationRoom extends Equatable {
  final int? id;
  final String? roomNumber;
  final String? roomName;
  final int? surgeryTypeId;
  final int? inchargeId;
  final int? noOfBed;
  final int? userId;
  final bool? active;
  final int? branchId;
  final dynamic branch;
  final int? tenantId;
  final SurgeryType? surgeryType;
  final User? user;
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

  factory OperationRoom.fromMap(Map<String, dynamic> data) => OperationRoom(
        id: data['Id'] as int?,
        roomNumber: data['RoomNumber'] as String?,
        roomName: data['RoomName'] as String?,
        surgeryTypeId: data['SurgeryTypeId'] as int?,
        inchargeId: data['InchargeId'] as int?,
        noOfBed: data['NoOfBed'] as int?,
        userId: data['UserId'] as int?,
        active: data['Active'] as bool?,
        branchId: data['BranchId'] as int?,
        branch: data['Branch'] as dynamic,
        tenantId: data['TenantId'] as int?,
        surgeryType: data['SurgeryType'] == null
            ? null
            : SurgeryType.fromMap(data['SurgeryType'] as Map<String, dynamic>),
        user: data['User'] == null
            ? null
            : User.fromMap(data['User'] as Map<String, dynamic>),
        postOperativeRooms: (data['PostOperativeRooms'] as List<dynamic>?)
            ?.map((e) => PostOperativeRoom.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'RoomNumber': roomNumber,
        'RoomName': roomName,
        'SurgeryTypeId': surgeryTypeId,
        'InchargeId': inchargeId,
        'NoOfBed': noOfBed,
        'UserId': userId,
        'Active': active,
        'BranchId': branchId,
        'Branch': branch,
        'TenantId': tenantId,
        'SurgeryType': surgeryType?.toMap(),
        'User': user?.toMap(),
        'PostOperativeRooms':
            postOperativeRooms?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OperationRoom].
  factory OperationRoom.fromJson(String data) {
    return OperationRoom.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OperationRoom] to a JSON string.
  String toJson() => json.encode(toMap());

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
