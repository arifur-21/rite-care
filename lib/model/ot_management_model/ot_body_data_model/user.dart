import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'contact.dart';

class User extends Equatable {
  final int? id;
  final int? contactId;
  final String? userName;
  final Contact? contact;

  const User({this.id, this.contactId, this.userName, this.contact});

  factory User.fromMap(Map<String, dynamic> data) => User(
        id: data['Id'] as int?,
        contactId: data['ContactId'] as int?,
        userName: data['UserName'] as String?,
        contact: data['Contact'] == null
            ? null
            : Contact.fromMap(data['Contact'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'ContactId': contactId,
        'UserName': userName,
        'Contact': contact?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());

  User copyWith({
    int? id,
    int? contactId,
    String? userName,
    Contact? contact,
  }) {
    return User(
      id: id ?? this.id,
      contactId: contactId ?? this.contactId,
      userName: userName ?? this.userName,
      contact: contact ?? this.contact,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, contactId, userName, contact];
}
