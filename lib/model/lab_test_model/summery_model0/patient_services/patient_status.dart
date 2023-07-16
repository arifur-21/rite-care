import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_status.g.dart';

@JsonSerializable()
class PatientStatus extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Prefix')
  final String? prefix;
  @JsonKey(name: 'LanguageCode')
  final dynamic languageCode;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const PatientStatus({
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

  factory PatientStatus.fromJson(Map<String, dynamic> json) {
    return _$PatientStatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientStatusToJson(this);

  PatientStatus copyWith({
    String? name,
    String? prefix,
    dynamic languageCode,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return PatientStatus(
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
