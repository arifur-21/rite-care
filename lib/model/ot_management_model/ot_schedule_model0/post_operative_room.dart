import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_operative_room.g.dart';

@JsonSerializable()
class PostOperativeRoom extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'OperationRoomId')
  final int? operationRoomId;
  @JsonKey(name: 'BedNo')
  final int? bedNo;
  @JsonKey(name: 'Occupency')
  final bool? occupency;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'PatientId')
  final dynamic patientId;
  @JsonKey(name: 'OperationRoom')
  final dynamic operationRoom;
  @JsonKey(name: 'PostOperativePatientHistories')
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

  factory PostOperativeRoom.fromJson(Map<String, dynamic> json) {
    return _$PostOperativeRoomFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostOperativeRoomToJson(this);

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
