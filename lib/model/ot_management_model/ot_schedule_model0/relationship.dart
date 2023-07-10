import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'relationship.g.dart';

@JsonSerializable()
class Relationship extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'LanguageCode')
  final String? languageCode;
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final int? errorCount;
  @JsonKey(name: 'NoErrors')
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

  factory Relationship.fromJson(Map<String, dynamic> json) {
    return _$RelationshipFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RelationshipToJson(this);

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
