import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'surgery.dart';

class OtPostDataModel extends Equatable {
  final SurgeryModel? surgery;

  const OtPostDataModel({this.surgery});

  factory OtPostDataModel.fromMap(Map<String, dynamic> data) {
    return OtPostDataModel(
      surgery: data['surgery'] == null
          ? null
          : SurgeryModel.fromMap(data['surgery'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'surgery': surgery?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OtPostDataModel].
  factory OtPostDataModel.fromJson(String data) {
    return OtPostDataModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OtPostDataModel] to a JSON string.
  String toJson() => json.encode(toMap());

  OtPostDataModel copyWith({
    SurgeryModel? surgery,
  }) {
    return OtPostDataModel(
      surgery: surgery ?? this.surgery,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [surgery];
}
