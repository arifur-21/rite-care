import 'dart:convert';

import 'package:equatable/equatable.dart';

class PatientPrefix extends Equatable {
  final String? name;
  final String? prefix;
  final String? languageCode;
  final int? id;
  final bool? active;
  final dynamic userId;
  final bool? hasErrors;
  final int? errorCount;
  final bool? noErrors;

  const PatientPrefix({
    this.name,
    this.prefix,
    this.languageCode,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory PatientPrefix.fromMap(Map<String, dynamic> data) => PatientPrefix(
        name: data['Name'] as String?,
        prefix: data['Prefix'] as String?,
        languageCode: data['LanguageCode'] as String?,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as dynamic,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
        'Prefix': prefix,
        'LanguageCode': languageCode,
        'Id': id,
        'Active': active,
        'UserId': userId,
        'HasErrors': hasErrors,
        'ErrorCount': errorCount,
        'NoErrors': noErrors,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PatientPrefix].
  factory PatientPrefix.fromJson(String data) {
    return PatientPrefix.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PatientPrefix] to a JSON string.
  String toJson() => json.encode(toMap());

  PatientPrefix copyWith({
    String? name,
    String? prefix,
    String? languageCode,
    int? id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    int? errorCount,
    bool? noErrors,
  }) {
    return PatientPrefix(
      name: name ?? this.name,
      prefix: prefix ?? this.prefix,
      languageCode: languageCode ?? this.languageCode,
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
      prefix,
      languageCode,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
