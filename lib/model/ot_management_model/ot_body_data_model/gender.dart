import 'dart:convert';

import 'package:equatable/equatable.dart';

class Gender extends Equatable {
  final String? name;
  final int? code;
  final String? typeName;
  final dynamic user;
  final List<dynamic>? bloodDonors;
  final int? id;
  final bool? active;
  final int? userId;
  final bool? hasErrors;
  final int? errorCount;
  final bool? noErrors;

  const Gender({
    this.name,
    this.code,
    this.typeName,
    this.user,
    this.bloodDonors,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Gender.fromMap(Map<String, dynamic> data) => Gender(
        name: data['Name'] as String?,
        code: data['Code'] as int?,
        typeName: data['TypeName'] as String?,
        user: data['User'] as dynamic,
        bloodDonors: data['BloodDonors'] as List<dynamic>?,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as int?,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
        'Code': code,
        'TypeName': typeName,
        'User': user,
        'BloodDonors': bloodDonors,
        'Id': id,
        'Active': active,
        'UserId': userId,
        'HasErrors': hasErrors,
        'ErrorCount': errorCount,
        'NoErrors': noErrors,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Gender].
  factory Gender.fromJson(String data) {
    return Gender.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Gender] to a JSON string.
  String toJson() => json.encode(toMap());

  Gender copyWith({
    String? name,
    int? code,
    String? typeName,
    dynamic user,
    List<dynamic>? bloodDonors,
    int? id,
    bool? active,
    int? userId,
    bool? hasErrors,
    int? errorCount,
    bool? noErrors,
  }) {
    return Gender(
      name: name ?? this.name,
      code: code ?? this.code,
      typeName: typeName ?? this.typeName,
      user: user ?? this.user,
      bloodDonors: bloodDonors ?? this.bloodDonors,
      id: id ?? this.id,
      active: active ?? this.active,
      userId: userId ?? this.userId,
      hasErrors: hasErrors ?? this.hasErrors,
      errorCount: errorCount ?? this.errorCount,
      noErrors: noErrors ?? this.noErrors,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      name,
      code,
      typeName,
      user,
      bloodDonors,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
