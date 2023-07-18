// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['Id'] as int?,
      contactId: json['ContactId'] as int?,
      userName: json['UserName'] as String?,
      contact: json['Contact'] == null
          ? null
          : Contact.fromJson(json['Contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Id': instance.id,
      'ContactId': instance.contactId,
      'UserName': instance.userName,
      'Contact': instance.contact,
    };
