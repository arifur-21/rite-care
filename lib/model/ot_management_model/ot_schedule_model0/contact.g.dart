// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      id: json['Id'] as int?,
      active: json['Active'] as bool?,
      userId: json['UserId'] as int?,
      tenantId: json['TenantId'] as int?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      genderId: json['GenderId'] as int?,
      street: json['Street'],
      city: json['City'],
      zip: json['Zip'],
      country: json['Country'] as String?,
      email: json['Email'] as String?,
      fax: json['Fax'],
      webSite: json['WebSite'],
      photo: json['Photo'],
      isCompany: json['IsCompany'],
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'TenantId': instance.tenantId,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'PhoneNumber': instance.phoneNumber,
      'GenderId': instance.genderId,
      'Street': instance.street,
      'City': instance.city,
      'Zip': instance.zip,
      'Country': instance.country,
      'Email': instance.email,
      'Fax': instance.fax,
      'WebSite': instance.webSite,
      'Photo': instance.photo,
      'IsCompany': instance.isCompany,
    };
