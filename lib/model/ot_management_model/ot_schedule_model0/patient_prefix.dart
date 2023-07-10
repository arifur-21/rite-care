import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_prefix.g.dart';

@JsonSerializable()
class PatientPrefix extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Prefix')
  final String? prefix;
  @JsonKey(name: 'LanguageCode')
  final String? languageCode;
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final int? errorCount;
  @JsonKey(name: 'NoErrors')
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

  factory PatientPrefix.fromJson(Map<String, dynamic> json) {
    return _$PatientPrefixFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientPrefixToJson(this);

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
