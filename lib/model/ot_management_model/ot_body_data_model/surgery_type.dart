import 'dart:convert';

import 'package:equatable/equatable.dart';

class SurgeryType extends Equatable {
  final int? id;
  final String? name;
  final dynamic description;
  final int? userId;
  final bool? active;
  final int? tenantId;

  const SurgeryType({
    this.id,
    this.name,
    this.description,
    this.userId,
    this.active,
    this.tenantId,
  });

  factory SurgeryType.fromMap(Map<String, dynamic> data) => SurgeryType(
        id: data['Id'] as int?,
        name: data['Name'] as String?,
        description: data['Description'] as dynamic,
        userId: data['UserId'] as int?,
        active: data['Active'] as bool?,
        tenantId: data['TenantId'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Name': name,
        'Description': description,
        'UserId': userId,
        'Active': active,
        'TenantId': tenantId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SurgeryType].
  factory SurgeryType.fromJson(String data) {
    return SurgeryType.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SurgeryType] to a JSON string.
  String toJson() => json.encode(toMap());

  SurgeryType copyWith({
    int? id,
    String? name,
    dynamic description,
    int? userId,
    bool? active,
    int? tenantId,
  }) {
    return SurgeryType(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      userId: userId ?? this.userId,
      active: active ?? this.active,
      tenantId: tenantId ?? this.tenantId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      userId,
      active,
      tenantId,
    ];
  }
}
