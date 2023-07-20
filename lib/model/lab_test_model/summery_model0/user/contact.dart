import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gender.dart';

part 'contact.g.dart';

@JsonSerializable()
class Contact extends Equatable {
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @JsonKey(name: 'LastName')
  final String? lastName;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'GenderId')
  final dynamic genderId;
  @JsonKey(name: 'Street')
  final dynamic street;
  @JsonKey(name: 'City')
  final dynamic city;
  @JsonKey(name: 'Zip')
  final dynamic zip;
  @JsonKey(name: 'Country')
  final String? country;
  @JsonKey(name: 'Email')
  final String? email;
  @JsonKey(name: 'Fax')
  final dynamic fax;
  @JsonKey(name: 'WebSite')
  final dynamic webSite;
  @JsonKey(name: 'Photo')
  final dynamic photo;
  @JsonKey(name: 'IsCompany')
  final dynamic isCompany;
  @JsonKey(name: 'ServiceProviders')
  final List<dynamic>? serviceProviders;
  @JsonKey(name: 'ServiceProviderType')
  final dynamic serviceProviderType;
  @JsonKey(name: 'Gender')
  final Gender? gender;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
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

  const Contact({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.genderId,
    this.street,
    this.city,
    this.zip,
    this.country,
    this.email,
    this.fax,
    this.webSite,
    this.photo,
    this.isCompany,
    this.serviceProviders,
    this.serviceProviderType,
    this.gender,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.userId,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return _$ContactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactToJson(this);

  Contact copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    dynamic genderId,
    dynamic street,
    dynamic city,
    dynamic zip,
    String? country,
    String? email,
    dynamic fax,
    dynamic webSite,
    dynamic photo,
    dynamic isCompany,
    List<dynamic>? serviceProviders,
    dynamic serviceProviderType,
    Gender? gender,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Contact(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      genderId: genderId ?? this.genderId,
      street: street ?? this.street,
      city: city ?? this.city,
      zip: zip ?? this.zip,
      country: country ?? this.country,
      email: email ?? this.email,
      fax: fax ?? this.fax,
      webSite: webSite ?? this.webSite,
      photo: photo ?? this.photo,
      isCompany: isCompany ?? this.isCompany,
      serviceProviders: serviceProviders ?? this.serviceProviders,
      serviceProviderType: serviceProviderType ?? this.serviceProviderType,
      gender: gender ?? this.gender,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
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
      firstName,
      lastName,
      phoneNumber,
      genderId,
      street,
      city,
      zip,
      country,
      email,
      fax,
      webSite,
      photo,
      isCompany,
      serviceProviders,
      serviceProviderType,
      gender,
      tenantId,
      tenant,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
