import 'dart:convert';

import 'package:equatable/equatable.dart';

class SurgeryStatus extends Equatable {
  final String? id;
  final String? name;
  final int? userId;
  final bool? active;
  final dynamic surgeryDetails;

  const SurgeryStatus({
    this.id,
    this.name,
    this.userId,
    this.active,
    this.surgeryDetails,
  });

  factory SurgeryStatus.fromMap(Map<String, dynamic> data) => SurgeryStatus(
        id: data['Id'] as String?,
        name: data['Name'] as String?,
        userId: data['UserId'] as int?,
        active: data['Active'] as bool?,
        surgeryDetails: data['SurgeryDetails'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Name': name,
        'UserId': userId,
        'Active': active,
        'SurgeryDetails': surgeryDetails,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SurgeryStatus].
  factory SurgeryStatus.fromJson(String data) {
    return SurgeryStatus.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SurgeryStatus] to a JSON string.
  String toJson() => json.encode(toMap());

  SurgeryStatus copyWith({
    String? id,
    String? name,
    int? userId,
    bool? active,
    dynamic surgeryDetails,
  }) {
    return SurgeryStatus(
      id: id ?? this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      surgeryDetails: surgeryDetails ?? this.surgeryDetails,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, userId, active, surgeryDetails];
}
