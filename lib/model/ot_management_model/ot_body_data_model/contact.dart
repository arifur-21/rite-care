import 'dart:convert';

import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final int? id;
  final bool? active;
  final int? userId;
  final int? tenantId;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final int? genderId;
  final dynamic street;
  final dynamic city;
  final dynamic zip;
  final String? country;
  final String? email;
  final dynamic fax;
  final dynamic webSite;
  final dynamic photo;
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

  factory Contact.fromMap(Map<String, dynamic> data) => Contact(
        id: data['Id'] as int?,
        active: data['Active'] as bool?,
        userId: data['UserId'] as int?,
        tenantId: data['TenantId'] as int?,
        firstName: data['FirstName'] as String?,
        lastName: data['LastName'] as String?,
        phoneNumber: data['PhoneNumber'] as String?,
        genderId: data['GenderId'] as int?,
        street: data['Street'] as dynamic,
        city: data['City'] as dynamic,
        zip: data['Zip'] as dynamic,
        country: data['Country'] as String?,
        email: data['Email'] as String?,
        fax: data['Fax'] as dynamic,
        webSite: data['WebSite'] as dynamic,
        photo: data['Photo'] as dynamic,
        isCompany: data['IsCompany'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Active': active,
        'UserId': userId,
        'TenantId': tenantId,
        'FirstName': firstName,
        'LastName': lastName,
        'PhoneNumber': phoneNumber,
        'GenderId': genderId,
        'Street': street,
        'City': city,
        'Zip': zip,
        'Country': country,
        'Email': email,
        'Fax': fax,
        'WebSite': webSite,
        'Photo': photo,
        'IsCompany': isCompany,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Contact].
  factory Contact.fromJson(String data) {
    return Contact.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Contact] to a JSON string.
  String toJson() => json.encode(toMap());

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
