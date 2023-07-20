// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      genderId: json['GenderId'],
      street: json['Street'],
      city: json['City'],
      zip: json['Zip'],
      country: json['Country'] as String?,
      email: json['Email'] as String?,
      fax: json['Fax'],
      webSite: json['WebSite'],
      photo: json['Photo'],
      isCompany: json['IsCompany'],
      serviceProviders: json['ServiceProviders'] as List<dynamic>?,
      serviceProviderType: json['ServiceProviderType'],
      gender: json['Gender'] == null
          ? null
          : Gender.fromJson(json['Gender'] as Map<String, dynamic>),
      tenantId: json['TenantId'],
      tenant: json['Tenant'],
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
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
      'ServiceProviders': instance.serviceProviders,
      'ServiceProviderType': instance.serviceProviderType,
      'Gender': instance.gender,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
