import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'surgery.dart';

part 'ot_schedule_model0.g.dart';

@JsonSerializable()
class OtScheduleModel0 extends Equatable {
  final Surgery? surgery;

  const OtScheduleModel0({this.surgery});

  factory OtScheduleModel0.fromJson(Map<String, dynamic> json) {
    return _$OtScheduleModel0FromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtScheduleModel0ToJson(this);

  OtScheduleModel0 copyWith({
    Surgery? surgery,
  }) {
    return OtScheduleModel0(
      surgery: surgery ?? this.surgery,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [surgery];
}
