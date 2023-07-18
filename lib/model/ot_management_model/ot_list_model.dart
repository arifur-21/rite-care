

import 'ot_schedule_model0/surgery.dart';

class OtScheduleModel {
  List<Surgery>? items;
  int? totalItems;

  OtScheduleModel({this.items, this.totalItems});

  OtScheduleModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null && json['items'] != '') {
      items = <Surgery>[];
      json['items'].forEach((v) {
        items!.add(Surgery.fromJson(v));
      });
    }
    totalItems = json['totalItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['totalItems'] = totalItems;
    return data;
  }
}


