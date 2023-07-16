import 'dart:convert';

import 'package:equatable/equatable.dart';

class SurgeryNote extends Equatable {
  final int? userId;
  final bool? active;
  final int? id;
  final String? note;
  final int? surgeryId;

  const SurgeryNote({
    this.userId,
    this.active,
    this.id,
    this.note,
    this.surgeryId,
  });

  factory SurgeryNote.fromMap(Map<String, dynamic> data) => SurgeryNote(
        userId: data['UserId'] as int?,
        active: data['Active'] as bool?,
        id: data['Id'] as int?,
        note: data['Note'] as String?,
        surgeryId: data['SurgeryId'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'UserId': userId,
        'Active': active,
        'Id': id,
        'Note': note,
        'SurgeryId': surgeryId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SurgeryNote].
  factory SurgeryNote.fromJson(String data) {
    return SurgeryNote.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SurgeryNote] to a JSON string.
  String toJson() => json.encode(toMap());

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
