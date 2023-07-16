import 'dart:convert';

import 'package:equatable/equatable.dart';

class Relationship extends Equatable {
  final String? name;
  final String? languageCode;
  final int? id;
  final bool? active;
  final int? userId;
  final bool? hasErrors;
  final int? errorCount;
  final bool? noErrors;

  const Relationship({
    this.name,
    this.languageCode,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Relationship.fromMap(Map<String, dynamic> data) => Relationship(
        name: data['Name'] as String?,
        languageCode: data['LanguageCode'] as String?,
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as int?,
        hasErrors: data['HasErrors'] as bool?,
        errorCount: data['ErrorCount'] as int?,
        noErrors: data['NoErrors'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
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
  /// Parses the string and returns the resulting Json object as [Relationship].
  factory Relationship.fromJson(String data) {
    return Relationship.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Relationship] to a JSON string.
  String toJson() => json.encode(toMap());

  Relationship copyWith({
    String? name,
    String? languageCode,
    int? id,
    bool? active,
    int? userId,
    bool? hasErrors,
    int? errorCount,
    bool? noErrors,
  }) {
    return Relationship(
      name: name ?? this.name,
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
