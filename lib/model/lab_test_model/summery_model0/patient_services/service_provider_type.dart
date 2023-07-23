import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_provider_type.g.dart';

@JsonSerializable()
class ServiceProviderType extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'ServiceProviders')
  final List<dynamic>? serviceProviders;
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

  const ServiceProviderType({
    this.name,
    this.serviceProviders,
    this.languageCode,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory ServiceProviderType.fromJson(Map<String, dynamic> json) {
    return _$ServiceProviderTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceProviderTypeToJson(this);

  ServiceProviderType copyWith({
    String? name,
    List<dynamic>? serviceProviders,
    dynamic languageCode,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return ServiceProviderType(
      name: name ?? this.name,
      serviceProviders: serviceProviders ?? this.serviceProviders,
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
      serviceProviders,
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
