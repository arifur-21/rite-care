import 'dart:convert';

import 'package:equatable/equatable.dart';

class PostOperativeRoom extends Equatable {
  final int? id;
  final int? operationRoomId;
  final int? bedNo;
  final bool? occupency;
  final int? userId;
  final bool? active;
  final dynamic patientId;
  final dynamic operationRoom;
  final List<dynamic>? postOperativePatientHistories;

  const PostOperativeRoom({
    this.id,
    this.operationRoomId,
    this.bedNo,
    this.occupency,
    this.userId,
    this.active,
    this.patientId,
    this.operationRoom,
    this.postOperativePatientHistories,
  });

  factory PostOperativeRoom.fromMap(Map<String, dynamic> data) {
    return PostOperativeRoom(
      id: data['Id'] as int?,
      operationRoomId: data['OperationRoomId'] as int?,
      bedNo: data['BedNo'] as int?,
      occupency: data['Occupency'] as bool?,
      userId: data['UserId'] as int?,
      active: data['Active'] as bool?,
      patientId: data['PatientId'] as dynamic,
      operationRoom: data['OperationRoom'] as dynamic,
      postOperativePatientHistories:
          data['PostOperativePatientHistories'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Id': id,
        'OperationRoomId': operationRoomId,
        'BedNo': bedNo,
        'Occupency': occupency,
        'UserId': userId,
        'Active': active,
        'PatientId': patientId,
        'OperationRoom': operationRoom,
        'PostOperativePatientHistories': postOperativePatientHistories,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostOperativeRoom].
  factory PostOperativeRoom.fromJson(String data) {
    return PostOperativeRoom.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PostOperativeRoom] to a JSON string.
  String toJson() => json.encode(toMap());

  PostOperativeRoom copyWith({
    int? id,
    int? operationRoomId,
    int? bedNo,
    bool? occupency,
    int? userId,
    bool? active,
    dynamic patientId,
    dynamic operationRoom,
    List<dynamic>? postOperativePatientHistories,
  }) {
    return PostOperativeRoom(
      id: id ?? this.id,
      operationRoomId: operationRoomId ?? this.operationRoomId,
      bedNo: bedNo ?? this.bedNo,
      occupency: occupency ?? this.occupency,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      patientId: patientId ?? this.patientId,
      operationRoom: operationRoom ?? this.operationRoom,
      postOperativePatientHistories:
          postOperativePatientHistories ?? this.postOperativePatientHistories,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      operationRoomId,
      bedNo,
      occupency,
      userId,
      active,
      patientId,
      operationRoom,
      postOperativePatientHistories,
    ];
  }
}
