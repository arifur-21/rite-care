import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

@JsonSerializable()
class Contact extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final int? userId;
  @JsonKey(name: 'TenantId')
  final int? tenantId;
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @JsonKey(name: 'LastName')
  final String? lastName;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'GenderId')
  final int? genderId;
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

  const Contact({
    this.id,
    this.active,
    this.userId,
    this.tenantId,
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
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return _$ContactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactToJson(this);

  Contact copyWith({
    int? id,
    bool? active,
    int? userId,
    int? tenantId,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    int? genderId,
    dynamic street,
    dynamic city,
    dynamic zip,
    String? country,
    String? email,
    dynamic fax,
    dynamic webSite,
    dynamic photo,
    dynamic isCompany,
  }) {
    return Contact(
      id: id ?? this.id,
      active: active ?? this.active,
      userId: userId ?? this.userId,
      tenantId: tenantId ?? this.tenantId,
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
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      active,
      userId,
      tenantId,
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
    ];
  }
}
