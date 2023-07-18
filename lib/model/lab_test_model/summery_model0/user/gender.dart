import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gender.g.dart';

@JsonSerializable()
class Gender extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Code')
  final dynamic code;
  @JsonKey(name: 'TypeName')
  final String? typeName;
  @JsonKey(name: 'User')
  final dynamic user;
  @JsonKey(name: 'BloodDonors')
  final List<dynamic>? bloodDonors;
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

  factory Gender.fromJson(Map<String, dynamic> json) {
    return _$GenderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenderToJson(this);

  Gender copyWith({
    String? name,
    dynamic code,
    String? typeName,
    dynamic user,
    List<dynamic>? bloodDonors,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
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
