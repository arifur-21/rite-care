import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'contact.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  @JsonKey(name: 'Id')
  final int? id;
  @JsonKey(name: 'ContactId')
  final int? contactId;
  @JsonKey(name: 'UserName')
  final String? userName;
  @JsonKey(name: 'Contact')
  final Contact? contact;

  const User({this.id, this.contactId, this.userName, this.contact});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

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
