import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'surgery_note.g.dart';

@JsonSerializable()
class SurgeryNote extends Equatable {
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Note')
  final String? note;
  @JsonKey(name: 'SurgeryId')
  final int? surgeryId;

  const SurgeryNote({
    this.userId,
    this.active,
    this.id,
    this.note,
    this.surgeryId,
  });

  factory SurgeryNote.fromJson(Map<String, dynamic> json) {
    return _$SurgeryNoteFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SurgeryNoteToJson(this);

  SurgeryNote copyWith({
    int? userId,
    bool? active,
    int? id,
    String? note,
    int? surgeryId,
  }) {
    return SurgeryNote(
      userId: userId ?? this.userId,
      active: active ?? this.active,
      id: id ?? this.id,
      note: note ?? this.note,
      surgeryId: surgeryId ?? this.surgeryId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [userId, active, id, note, surgeryId];
}
